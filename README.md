### 安卓系统安装Mojo-Webqq、Mojo-Weixin服务端教程  

1.安装Termux,酷安可下。play商店有最新版。  
[Termux](https://www.coolapk.com/apk/com.termux)  

2.运行Termux,并在Termux内执行以下命令,会请求存储权限,点击允许  
`pkg install curl && bash <(curl -L -s https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/termux_mojo.sh)`  

3.安装并运行GCMForMojo APP,设置推送通道,复制设备码。

4.修改手机存储根目录wx.pl和qq.pl(文件管理器打开,文本模式编辑),看注释说明填入自己的设备码,删除无用推送通道,并保存。  

5.QQ执行命令(在Termux内)  
`nohup perl /storage/emulated/0/qq.pl &`

此时GcmForMojo应该会推送"扫描二维码事件",打开链接并保存二维码图片,用QQ客户端扫描相册二维码图片登陆即可  

6.微信执行命令(在Termux内)  
`nohup perl /storage/emulated/0/wx.pl &`

此时GcmForMojo应该会推送"扫描二维码事件",打开链接并用其他手机拍下二维码图片,用微信客户端扫描登陆即可。  

二维码图片文件位于/data/data/com.termux/files/usr/tmp/,需要ROOT权限才能查看此文件夹。  
如果没收到二维码推送，运行以下命令检查运行日志,日志文件nohup.out位于/data/data/com.termux/files/home  
``tail -f nohup.out``  

其他可能用到的命令(在Termux内)  
停止服务端运行``pkill perl`` 
查看运行日志``tail -f nohup.out`` 
检查perl版本号 ``perl -v`` 
查看根目录文件是否存在、可读 ``ls /storage/emulated/0/``

`回复功能需要公网IP,或者内网穿透。本地、局域网也可尝试环回地址127.0.0.1或者局域网地址192.168.*.*。`
