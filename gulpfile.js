var gulp = require('gulp');
var browserify = require('gulp-browserify');

var src = "process";
var dest = "app/assets/javascripts/build";

gulp.task('js', function(){
    return gulp.src(src + '/app.js')
        .pipe(browserify({
            transform: 'reactify',
            debug: true
        })).on('error', function(err){
            console.error('Error: ',err.message);
        })
        .pipe(gulp.dest(dest));
});

gulp.task('watch', function(){
   gulp.watch(src + '/*', ['js']);
});

gulp.task('default', ['watch', 'js']);