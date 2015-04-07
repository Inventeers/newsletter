# Gruntfile.coffee
# @see http://coffeescript.org/
module.exports = (grunt) ->

  # Auto-load all known grunt packages
  require('load-grunt-tasks') grunt

  # Grunt configuration and set-up
  grunt.initConfig
    emailBuilder:
      inline:
        files: 'output.html': 'source.html'
        options: encodeSpecialChars: true
      emailTest:
        files: 'output.html': 'output.html'
        options:
          encodeSpecialChars: false
          emailTest:
            from: 'newsletter@inventeers.nl'
            email: grunt.option('email') or 'vanegmond@inventeers.nl'
            subject: grunt.option('subject') or 'Test'
            transport:
              type: 'SMTP'
              host: 'smtp.ziggozakelijk.nl'

  # Set-up grunt tasks
  grunt.registerTask 'send', ['emailBuilder:emailTest']
  grunt.registerTask 'build', ['emailBuilder:inline']
  grunt.registerTask 'default', [ 'build' ]