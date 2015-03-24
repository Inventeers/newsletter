module.exports = function(grunt) {

  // Auto-load all known grunt packages
  require('load-grunt-tasks')(grunt);

  // Grunt configuration and set-up
  grunt.initConfig({
    emailBuilder: {
      inline: {
        files: {
          'output.html': 'source.html'
        }
      }
    }
  });

  // Set-up grunt tasks
  grunt.registerTask('default', ['emailBuilder']);
};
