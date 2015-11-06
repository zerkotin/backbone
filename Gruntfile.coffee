module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    browserify:
      js:
        src: 'bld/index.js',
        dest: 'app/index.js'

    watch:
      coffee:
        files: ['src/coffee/**/*.coffee'],
        tasks: ['coffee-transpile']
      less:
        files: ['src/style/**/*.less'],
        tasks: ['less-transpile']

    less:
      development:
        files: {'app/index.css': 'src/style/index.less'}

    coffee:
      compile:
        options:
          bare: false
          join: false
          sourceMap: true
          flatten: false
        files:
          'bld/index.js': ['src/coffee/**/*.coffee']




  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-contrib-less'

  grunt.registerTask 'default', ['coffee', 'browserify', 'less']
  grunt.registerTask 'coffee-transpile', ['coffee', 'browserify']
  grunt.registerTask 'less-transpile', ['less']
