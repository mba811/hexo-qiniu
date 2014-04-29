html_tag = hexo.util.html_tag
colors = require('colors')
packageInfo = require('./../package.json')
#qiniuCommands = require('./qiniuCommands')(hexo)
rootPath = hexo.config.root
qiniuConfig = hexo.config.qiniu || false
qiniuImageDir = qiniuConfig.image_dir || false

qiniuCommandOptions =
  desc: packageInfo.description
  usage: '<argument>'
  arguments: [
    "name": 'info'
    "desc": "Displays useful info, like plugin version, aurthor or GitHub links"
  ]

hexo.extend.console.register 'qiniu', packageInfo.description,qiniuCommandOptions,(args,callback)->
  console.log('\n'.yellow)
  console.log('    __  __                               ____     _             _         '.yellow)
  console.log('   / / / /  ___    _  __  ____          / __ \\   (_)   ____    (_)  __  __'.yellow)
  console.log('  / /_/ /  / _ \\  | |/_/ / __ \\ ______ / / / /  / /   / __ \\  / /  / / / /'.yellow)
  console.log(' / __  /  /  __/ _>  <  / /_/ //_____// /_/ /  / /   / / / / / /  / /_/ / '.yellow)
  console.log('/_/ /_/   \\___/ /_/|_|  \\____/        \\___\\_\\ /_/   /_/ /_/ /_/   \\__,_/  '.yellow)
  console.log('                                                                          '.yellow)
  console.log('                                                     Thank you'.yellow)

  opt = args._[0] || null
  switch opt
    when 'info' then qiniuCommandOptions.showInfo()
    else hexo.call 'help' ,
      _: ['qiniu'],
      callback

    




