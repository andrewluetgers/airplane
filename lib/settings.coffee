path = require('path')
userHome = require('user-home')
fs = require('fs')
cwdPath = path.join(process.cwd(), '.airplanerc.json')
usrPath = path.join(userHome, '.airplanerc.json')

fileStat = fs.statSync(cwdPath)

console.log(cwdPath, fileStat.isFile())

if fileStat && fileStat.isFile()
  path = cwdPath
else
  path = usrPath

console.log("path", path)

module.exports =

  configPath: path

