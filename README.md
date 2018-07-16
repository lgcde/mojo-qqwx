### 安卓系统安装Mojo-Webqq、Mojo-Weixin服务端教程  

1.安装Termux,酷安可下  
[Termux](https://www.coolapk.com/apk/com.termux)


2.运行Termux,并在Termux内执行以下命令  
`bash <(curl -L -s https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/termux_mojo.sh)`

3.修改手机存储根目录wx.pl和qq.pl(文件管理器打开,文本模式编辑),填入自己的令牌,并保存  

4.QQ执行命令(在Termux内)  
`nohup perl /storage/emulated/0/qq.pl &`

5.微信执行命令(在Termux内)  
`nohup perl /storage/emulated/0/wx.pl &`

6.如果需要停止服务端运行,执行命令(在Termux内)  
``pkill perl``
