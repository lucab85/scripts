'use strict';

const gulp = require('gulp');
const newer = require('gulp-newer');
const imageResize = require('gulp-image-resize')
const imagemin = require('gulp-imagemin');
const jpegrecompress = require('imagemin-jpeg-recompress');

var IMG_SRC = 'images/*.{jpg,png,gif}';
var IMG_DST = '../static/images/';
var IMG_W = 600;

var FAV_SRC = 'favicons/**/*';
var FAV_DST = '../static/';

var opts_jpegrecompress = {
	accurate: true,
	quality: 'medium',
	method: 'ms-ssim',
	loops: 6,
	progressive: true,
	subsample: 'default',
	strip: true
}
var plugins_imagemin = [
	jpegrecompress(opts_jpegrecompress),
]
var opts_imagemin = {
	verbose: true
}
var opts_imageResize = {
	imageMagick: true,
	width: IMG_W
}

gulp.task('images', function () {
    return gulp.src(IMG_SRC)
		.pipe(newer(IMG_DST))
		.pipe(imageResize(opts_imageResize))
        .pipe(imagemin(plugins_imagemin, opts_imagemin))
        .pipe(gulp.dest(IMG_DST))
});

gulp.task('favicons', function () {
    return gulp.src(FAV_SRC)
		.pipe(newer(FAV_DST))
        .pipe(imagemin(plugins_imagemin, opts_imagemin))
        .pipe(gulp.dest(FAV_DST))
});

gulp.task('default', ['images', 'favicons']);
