var os = require('os')
var path = require('path')

var arch = os.arch()
if (arch !== 'x64') {
  console.error('Unsupported architecture.')
  process.exit(1)
}

var platform = os.platform()
if (platform !== 'linux' && platform !== 'darwin') {
  console.error('Unsupported platform.')
  process.exit(1)
}

var ffmpegPath = path.join(
  __dirname,
  'bin',
  platform,
  arch,
  'ffmpeg'
)

exports.path = ffmpegPath;
