gruntfile = (grunt) ->
    'use strict'
    # Project configuration
    grunt.initConfig({
      # Metadata
      pkg: grunt.file.readJSON('package.json')
      documents: ['document/1_intro.md', 'document/2_crowdsourcing.md',
        'document/3_typology.md', 'document/4_posterior_objective.md',
        'document/5_design_objective.md', 'document/5_5_ams-study.md',
        'document/6_subjective.md', 'document/7_conclusions.md']
      # Task configuration
      exec:
        pdf:
          cmd: 'make pdf'
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
