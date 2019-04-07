#!/bin/sh
set +e
cd $(dirname $0)

tar_exec=$(command -v gtar)
if [ $? -ne 0 ]; then
	tar_exec=$(command -v tar)
fi

download () {
	curl -L -# -A 'https://github.com/eugeneware/ffmpeg-static' -o $2 $1
}

echo 'linux x64'
echo '  downloading from johnvansickle.com'
download 'https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz' linux-x64.tar.xz
echo '  extracting'
$tar_exec -x -C ../bin/linux/x64 --strip-components 1 -f linux-x64.tar.xz --wildcards '*/ffmpeg'

echo 'darwin x64'
echo '  downloading from evermeet.cx'
download "https://evermeet.cx/ffmpeg/getrelease" darwin-x64-ffmpeg.7z
7zr e -y -bd -o../bin/darwin/x64 darwin-x64-ffmpeg.7z >/dev/null
