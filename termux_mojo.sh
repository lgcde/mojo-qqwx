pkg install -y wget make clang *YAML* perl openssl-dev openssl-tool coreutils termux-tools
termux-setup-storage
curl http://share-10066126.cos.myqcloud.com/cpanm.pl|perl - App::cpanminus
cpanm Mojo::Webqq Mojo::Weixin Webqq::Encryption
wget -P /storage/emulated/0/ https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/qq.pl https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/wx.pl
