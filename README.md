# ffmpeg-static-magiccap

**[ffmpeg](https://ffmpeg.org) static binaries for Mac OSX and Linux.**

Supports macOS (64-bit) and Linux (64-bit). The current ffmpeg version is `4.1`.

*Note:* The version of `ffmpeg-static-magiccap` follows [SemVer](http://semver.org). When releasing new versions, **we do *not* consider breaking changes in `ffmpeg` itself**, but only the JS interface (see below). To stop `ffmpeg-static-magiccap` from breaking your code by getting updated, [lock the version down](https://docs.npmjs.com/files/package.json#dependencies) or use a [lockfile](https://docs.npmjs.com/files/package-lock.json).

[![build status](https://travis-ci.org/MagicCap/ffmpeg-static-magiccap.svg?branch=master)](https://travis-ci.org/MagicCap/ffmpeg-static-magiccap)

## Installation

This module is installed via npm:

``` bash
$ npm install ffmpeg-static-magiccap
```

## Example Usage

Returns the path of a statically linked ffmpeg binary on the local filesystem.

``` js
var ffmpeg = require('ffmpeg-static-magiccap');
console.log(ffmpeg.path);
// /Users/eugeneware/Dropbox/work/ffmpeg-static-magiccap/bin/darwin/x64/ffmpeg
```

## Sources of the binaries

[The build script](build/index.sh) downloads binaries from these locations:

- [Linux builds](https://johnvansickle.com/ffmpeg/)
- [macOS builds](https://evermeet.cx/pub/ffmpeg/)

## Building the project

The `unzip`, `tar` and `7zr` CLI executables need to be installed. On macOS, use `brew install p7zip gnu-tar xz`.
