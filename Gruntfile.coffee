gruntfile = (grunt) ->
    'use strict'
    # Project configuration
    grunt.initConfig({
      # Metadata
      pkg: grunt.file.readJSON('package.json')
      documents: ['document/0_abstract.md', 'document/1_intro.md',
        'document/2_crowdsourcing.md',
        'document/3_typology.md', 'document/4_posterior_objective.md',
        'document/5_design_objective.md', 'document/5_5_ams-study.md',
        'document/6_subjective.md', 'document/7_conclusions.md',
        'document/appendix_contributions.md', 'document/appendix_code.md']
      # Task configuration
      exec:
        pdf:
          cmd: 'make pdf'
        images:
          cmd: 'rsync -av -e \'ssh -i ../../../keys/crowdy/crowdy-ec2.pem \' '+
          'ec2-user@ec2-52-27-153-227.us-west-2.compute.amazonaws.com:'+
          '~/dissertation/images/* ./images'
      watch:
        markdown:
          files: '<%= documents %>',
          tasks: ['exec:pdf']
    })

    # These plugins provide necessary tasks
    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-exec')
    grunt.loadNpmTasks('grunt-newer')

    # Default task
    grunt.registerTask('default', ['concat'])

module.exports = gruntfile
