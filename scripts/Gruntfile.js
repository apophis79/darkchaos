module.exports = function (grunt) {
  grunt.initConfig({
    concat: {
      vpx: {
        src: ['src/vpx/**/*.vbs', 'src/game/**/*.vbs', 'src/glf/glf.vbs', 'src/glf/shows/*.vbs', '!src/unittests/**/*.vbs', '!src/**/*.test.vbs', '!src/**/*-mpf.vbs','!src/**/*-ignore.vbs'],
        dest: 'dest/vpx/tablescript.vbs',
      },
    },
    watch: {
      vpx: {
        files: 'src/**/*.vbs',
        tasks: ['concat:vpx'],
        options: {
          atBegin: true
        }
      },
    }

  });

  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-watch');
  // Default task(s).
  grunt.registerTask('default', ['concat']);

};