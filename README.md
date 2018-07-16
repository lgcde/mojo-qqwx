### 安卓系统安装Mojo-Webqq、Mojo-Weixin服务端教程  

1.安装Termux,酷安可下  
[Termux](https://www.coolapk.com/apk/com.termux)


2.运行Termux,并在Termux内执行以下命令,会请求存储权限,点击允许  
`pkg install curl && bash <(curl -L -s https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/termux_mojo.sh)`

3.修改手机存储根目录wx.pl和qq.pl(文件管理器打开,文本模式编辑),填入自己的令牌,并保存  

4.QQ执行命令(在Termux内)  
`nohup perl /storage/emulated/0/qq.pl &`

此时GcmForMojo应该会推送"扫描二维码事件",打开链接并保存二维码图片,用QQ客户端扫描相册二维码图片登陆即可

5.微信执行命令(在Termux内)  
`nohup perl /storage/emulated/0/wx.pl &`

此时GcmForMojo应该会推送"扫描二维码事件",打开链接并用其他手机拍下二维码图片,用微信客户端扫描登陆即可。二维码图片文件位于/data/data/com.termux/files/usr/tmp/,需要ROOT权限才能查看此文件夹。

6.如果需要停止服务端运行,执行命令(在Termux内)  
``pkill perl``

`回复功能需要公网IP,或者内网穿透。也可私信我(提供内网穿透服务,由于服务器需要成本,非免费)`
