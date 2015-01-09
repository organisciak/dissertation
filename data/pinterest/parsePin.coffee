# Usage: coffee parsPin.coffee pin_url [--save-heading]
#
request = require 'request'
cheerio = require 'cheerio'
fs = require 'fs'
stringify = require 'csv-stringify'
generate = require 'csv-generate'
util = require 'util'

url = process.argv[2]
if not url or url.substring(0,4) != 'http'
  util.debug "Need URL argument starting with http"
  util.debug url
  return

opts = {
  saveHeading: false
  basePath: "."
}

for arg in process.argv
  if arg == '--save-heading'
    opts.saveHeading = true
  if arg.indexOf("=") != -1
    kwarg = arg.split("=")
    if kwarg[0] == "--basePath"
      opts.basePath = kwarg[1]

request(url, (err, res, body) ->
  if err
    util debug("Error with " + url)
    util.debug err

  util.log("Processing Pin: " + url)

  $ = cheerio.load(body)
  scripts = $('script')
  for script in scripts
    if script.attribs.id == 'jsInit'
      parseData(script)
)

parseData = (script) ->
    scriptRaw = script.children[0].data
    P = { scout:{data:{}}, start:{data:{}}}

    # Replace Pinterest's methods with my own
    P.scout.init = (obj) ->
      P.scout.data = obj
    P.start.start = (obj) ->
      P.start.data = obj

    eval(scriptRaw)

    # Assign shorthand references
    meta = P.scout.data.page_info.meta
    start = P.start.data.tree.data
    if !(start?)
      util.debug("This URL no longer exists: " + url)
      return

    pinData = {
      id: start.id
      url: meta['og:url']
      description: meta['og:description']
      type: start.type # meta['og:type']
      title: meta['og:title']
      image: start.images['736x'].url # meta['og:image']
      image60: start.images['60x60'].url
      image236: start.images['236x'].url
      likes: start.like_count # parseInt(meta['pinterestapp:likes'], 10)
      repins: parseInt(meta['pinterestapp:repins'], 10)
      source: meta['pinterestapp:source']
      domain: start.domain
      price: start.price_value
      price_currency: start.price_currency
      created: start.created_at
      comment_count: start.comment_count
      # recipe_ingredients: start.rich_recipe_top_ingredients
      place: start.place
      pinner: start.pinner.id
      board: start.board.id
      is_banned: start.is_banned
      is_repin: start.is_repin
      via_pinner: (if start.via_pinner then start.via_pinner.id else false)
      pin_join: (if start.pin_join then start.pin_join.id else false)
    }

    # Lossy information
    # Repins only point to to the original pinner, not the original pin
    # Best link between pins is identical image url

    userData = [start.pinner]
    pinJoinData = [start.pin_join]
    boardData = [start.board]

    # Flatten all comments and collect additional users of interest
    commentsData = []
    for comment in start.comments.data
      commentsData.push({
        text: comment.text
        created_at: comment.created_at
        user: comment.commenter.id
      })
      userData.push(comment.commenter)
    if pinData.is_repin
      userData.push(start.via_pinner)
    
    #Flatten board data
    for board, i in boardData
      boardData[i].pin_thumbnail_urls = board.pin_thumbnail_urls.join(";")
      boardData[i].owner = (if board.owner then board.owner.id else false)
      delete boardData[i].access

    for pinJoin, i in pinJoinData
      pinJoinData[i].visual_annotation = pinJoin.visual_annotation.join(";")
    
    P.scout.data.routes = null
    P.scout.data.context = null

    saveCSV([pinData], 'pinData.csv', opts)
    saveCSV(commentsData, 'commentsData.csv', opts)
    saveCSV(userData, 'userData.csv', opts)
    saveCSV(boardData, 'boardData.csv', opts)
    saveCSV(pinJoinData, 'pinJoinData.csv', opts)

saveCSV = (data, path, opts) ->
  if data.length == 0
    return
  if opts.saveHeading
    # An easy way to write out the heading for a CSV file
    values = ((k for k,v of arr) for arr in data)
  else
    values = ((v for k,v of arr) for arr in data)

  modPath = opts.basePath + "/" + path

  stringify(values, (err, output) ->
      fs.appendFile(modPath, output, (err) ->
        if err
          util.debug err
      )
  )
