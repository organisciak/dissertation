// Collect autofill queries
// Go to pinterest.com
// Click into search back
// Run getCurrent

// Type 'a' into search bar
// run getCurrent
// Repeat

getCurrent = function() {
    /* Get the current autocomplete queries, with the full JSON data */
    var queries = [];
    jQuery(".typeaheadName").each(function(){
         a = jQuery(this).attr("data-aux");
         b = jQuery.parseJSON(a);
         queries.push(b);
    })
    return queries;
}; 
queries = getCurrent();

parseQueryStrings = function(jsonArr, filter) {
    if (filter) {
        jsonArr = jsonArr.filter(function(q) {
               if(q.autocomplete_type !== filter) {
                    return false;
               }
               return true;
        })
    }
    var parsed = jsonArr.map(function(q) {
        return q.selected_query;
    });
    return parsed;
};

query = function(queue, callback) {
    /* Provide an array of string queries */
    q = queue.shift();
    // Construct a fake event
    testevent2 = $.Event("input", { isTrigger: 3, target: $('input.field')[0] } )

    // Set input val and trigger search event
    $("input[name=q]").val(q);
    jQuery("div.inHeader.search.Module.ui-TypeaheadField").trigger(testevent2).trigger("click");
    setTimeout(function() {
         // Get results for this queries
         queries = getCurrent();
         callback(queries, queue);
     }, 500);
}



addToQueries = function(arr, queue) {
    allQueries = allQueries.concat(arr);
    if (queue.length > 0) {
        query(queue, addToQueries);
    } else {
        console.log("done!");
    }
};

allQueries = [];
searches = "abcdefghijklmnopqrstuvwxyz".split("").concat(['TH', 'OF', 'AN', 'IN', 'TO', 'CO', 'RE', 'BE', 'FO', 'PR', 'WH', 'HA', 'MA', 'WI', 'HE', 'IS', 'NO', 'WA', 'ON', 'DE', 'ST', 'SE', 'AS', 'IT', 'CA', 'HI', 'SO', 'WE', 'AR', 'DI', 'MO', 'AL', 'SU', 'PA', 'FR', 'ME', 'OR', 'SH', 'LI', 'CH', 'WO', 'PO', 'EX', 'BY', 'AT', 'FI', 'PE', 'BU', 'LA', 'NE', 'UN', 'LE', 'SA', 'TR', 'HO', 'YO', 'LO', 'DO', 'FA', 'SI', 'GR', 'EN', 'AC', 'MI', 'TE', 'BO', 'BA', 'GO', 'SP', 'OU', 'PL', 'EV', 'AB', 'TA', 'RA', 'US', 'BR', 'CL', 'DA', 'GE', 'TI', 'FE', 'AD', 'MU', 'IM', 'AP', 'RO', 'NA', 'SC', 'PU', 'EA', 'CR', 'VI', 'CE', 'OT', 'AM', 'AG', 'UP', 'RI', 'VE'])

query(searches, addToQueries);

console.log(allQueries);
queryStrings = parseQueryStrings(allQueries, 'query');
queryStrings.join(", ");

/*

"appetizers, art, ab workout, animals, apartment decorating, baby shower, backyard ideas, baby, bedroom, bedroom ideas, christmas, christmas decorations, chicken recipes, crockpot recipes, christmas crafts, diy, dinner recipes, dresses, desserts, disney, easter, engagement rings, elf on the shelf ideas, eye makeup, easter crafts, food, fashion, funny, funny quotes, fall, garden, gift ideas, gluten free, girls bedroom, gardening, hair styles, hair, healthy recipes, halloween costumes, halloween, inspirational quotes, interior design, ikea, i love you, italy, jewelry, jennifer lawrence, jello shots, jeans, jokes, kitchen, kitchen ideas, kids crafts, kitchen decor, kids, love quotes, love, living room, long hair, lingerie, makeup, medium hair styles for women, mothers day, mothers day gifts, master bedroom, nail art, nails, nail designs, nail art designs, nail art for short nails, ombre hair, organization, organization tips, outfits, organizing, prom dresses, pregnancy, prom hair, paleo, puppies, quotes, quinoa, quinoa recipes, quilts, quotes about change, recipes, red hair, rings, relationship quotes, rustic wedding, spring fashion, shoes, short hair styles for women, short hair, sexy, tattoos, thanksgiving, tattoo ideas, thanksgiving recipes, travel, updos, updo hairstyles, ugly christmas sweater, u�as, updos for medium length hair, valentines ideas, valentines day gifts for him, valentines day, vintage, valentines crafts, wedding, wedding dresses, wedding hair, wedding rings, wedding ideas, xmas, x, xmas crafts, xmas decorations, x rated, yoga, yoga poses, yoga pants, yellow, yoga workout, zucchini recipes, zucchini, zac efron, zara, zucchini bread, thanksgiving, thanksgiving recipes, thanksgiving crafts, thanksgiving decorations, thanksgiving desserts, office, office decor, office organization, office ideas, office design, animals, anchor tattoo, anniversary gift ideas for him, anthropologie, anime, inspirational quotes, interior design, inspiration, infinity tattoo, infinity scarf, toms, toe nails, tom hiddleston, toddler crafts, toddler activities, cookies, country wedding, coffee, costumes, coconut oil, recipes, red hair, relationship quotes, relationships, red, bedroom, bedroom ideas, bedroom decor, beach, beauty, food, food recipes, fonts, foot tattoos, fourth of july, prom dresses, pregnancy, prom hair, prom, pregnancy announcement, white tattoo, white dress, white kitchen, white, white ink tattoo, hair styles, hair, halloween costumes, halloween, hair styles for long hair, makeup, master bedroom, makeup tutorial, maxi skirt, maxi dress, winter outfits, winter fashion, winter, winter wedding, window treatments, healthy recipes, healthy snacks, healthy food, healthy meals, healthy, istanbul, isabel marant, israel, islam, isagenix, no bake cookies, nose piercing, no heat curls, norway, nordstrom, wall decor, wallpaper, watercolor tattoo, wall art, waterfall braid, one direction, once upon a time, one piece bathing suit women, one tree hill, once upon a time abc, desserts, dessert recipes, detox, decorating ideas for the home, design, st patricks day, stuffed peppers, style, starbucks, steampunk, sexy, sewing, selena gomez, sewing projects, senior picture ideas for girls, asparagus, asparagus recipes, ashley benson, asos, ashley olsen, italy, italian food, italian recipes, italian, italian chicken, cake, camping, cake pops, casual outfits, cake recipes, hipster, highlights, hippie, hipster fashion, high waisted shorts, soup, soup recipes, sock bun, someecards, soccer, wedding, wedding dresses, wedding hair, wedding rings, wedding ideas, art, arm workout, arrow tattoo, architecture, art deco, diy, dinner recipes, disney, diy crafts, diy gifts, mothers day, mothers day gifts, motivation, motivational quotes, mothers day crafts, alice in wonderland, alcoholic drinks, alcohol, alfredo sauce, alaska, summer, summer outfits, summer fashion, summer dresses, summer nails, paleo, paleo recipes, pasta, party food, pasta salad, friendship quotes, frozen, friends, french toast, fruit salad, medium hair styles for women, medium hair cuts for women, mens style, meatloaf, mens fashion, organization, organization tips, organizing, organize, organization diy, shoes, short hair styles for women, short hair, short hair styles for women 2013, short hair styles, living room, lingerie, life quotes, life hacks, living room decor on a budget, christmas, christmas decorations, chicken recipes, christmas crafts, christmas ideas, workout, work outfit, workout motivation, woodworking, womens fashion, pork chops, potatoes, potato soup, pork tenderloin, potato recipes, exercise, exercise routines, exercise motivation, exterior paint colors for house, extensions, bycicle, bye felicia, bye, byron bay, by the sea, atkins, atkins diet recipes phase 1, attic bedroom, at home workouts for women, attic, fitness, fitness motivation, fireplace, fire pit, fishtail braid, peinados, pedicure, peach cobbler, peanut butter cookies, peonies, bucket list, burlap wreath, buffalo chicken dip, business casual, butternut squash, laundry room, lauren conrad, lasagna, lace wedding dress, landscaping, newborn photography, new york, new years eve party ideas, necklace, nelson mandela, unicorn, unique tattoos, underwear, unique engagement rings, under armour, leggings, lego, leggings outfit, leg workout, leather jacket, salad, salmon, salmon recipes, salad recipes, sangria, travel, tree house, tree tattoo, travel quotes, true love, home decor, home, horses, home decorating, home office, yoga, yoga poses, yoga pants, yoga workout, yorkie, love quotes, love, long hair, long hair cuts with layers, long bob, dogs, doctor who, dorm room, dorm decor, dorm room ideas for girls, fashion, fall, fall outfits, fall decor, fall fashion, sister quotes, side dishes, sister tattoos, side bangs, sisters, graduation, graduation party, grumpy cat, ground beef recipes for dinner, graduation gifts, engagement rings, engagement photos, engagement photography, enchiladas, engagement pictures, acrylic nails, acne, accessories, acne remedies, acne treatment, miley cyrus, minions, michael kors, minecraft, minion costume, teacher gifts, teeth whitening, teacher appreciation, tea, teen bedroom, boots, boyfriend gifts, bob haircut, bob hairstyles, boudoir, baby shower, backyard ideas, baby, bathroom, bathroom ideas, god, good morning, gossip girl, god quotes, golden retriever, spring fashion, spring, spring outfits, spaghetti squash, spring nails, outfits, outdoor wedding, outdoor living, outfit ideas, outdoor kitchen, plants, plus size fashion for women, playroom, plus size, plus size fashion, everything, evening dresses, evening gowns, everything pinterest, everyday makeup, ab workout, abs, abstract art, ab challenge, abstract painting, tattoos, tattoo ideas, tattoo quotes, tattoos for women, taylor swift, rainbow loom, rain, rainbow cake, rainbow, rain boots, usa, uses for coconut oil, usher, us navy, usa travel, breakfast, bridesmaid dresses, braids, bridal shower, breakfast casserole, clean eating, clothes, closet organization, cleaning, closet, dance, date ideas, dark hair, dark brown hair, daily odd compliment, gender reveal, gel nails, german shepherd, gender reveal party, gender reveal ideas, tilapia, tilapia recipes, tie dye, tiffany, tiger, feather tattoo, felt, felt crafts, fence, feathers, adult halloween costumes, adam levine, advent calendar, adventure time, advocare, music, muffins, music quotes, music tattoo, mud room, im sorry, imagine dragons, im sorry i hurt you, im sorry quotes, imagination, appetizers, apartment decorating, appetizers easy, apple pie, apple crisp, room decor, room ideas, rose tattoo, romance, roses, nail art, nails, nail designs, nail art designs, nail art for short nails, scarf, scrapbooking, scarves, scarf tying, school, puppies, pumpkin carving, pumpkin, purple hair, pumpkin recipes, easter, easter crafts, easter ideas, easy dinner, easy desserts, crockpot recipes, crafts, crochet, crockpot chicken, crochet patterns, vintage, vintage wedding, victoria secret, vintage decor, vintage wedding dress, centerpieces, celebrities, centerpiece wedding, cellulite, ceramics, ottoman, otter, ottoman diy, ot, otterbox, amor, amsterdam, america, american eagle, american flag, agenda, agent provocateur, against all grain, agriculture, agape, updos, updo hairstyles, updos for medium length hair, upcycle, up, rings, rings engagement, rihanna, rib tattoo, rice, vegan, vegetarian recipes, vegan recipes, vegetarian, vegetable garden"
*/


userStrings = parseQueryStrings(allQueries, 'user');
queryStrings = parseQueryStrings(allQueries, 'query');
recentQueryStrings =  parseQueryStrings(allQueries, 'recent_query');

queryStrings.join(", ");