pkg install -y termux-tools
termux-setup-storage
pkg install -y wget make clang *YAML* perl openssl-dev openssl-tool coreutils
curl http://share-10066126.cos.myqcloud.com/cpanm.pl|perl - App::cpanminus
cpanm --mirror http://mirrors.163.com/cpan/ Mojo::Webqq Mojo::Weixin Webqq::Encryption
wget -P /storage/emulated/0/ https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/qq.pl https://raw.githubusercontent.com/lgcde/mojo-qqwx/master/wx.pl
