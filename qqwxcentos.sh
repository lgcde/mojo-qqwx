timedatectl set-timezone 'Asia/Shanghai'
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
yum -y --nogpgcheck install make unzip  wget  tar perl  perl-App-cpanminus perl-Crypt-OpenSSL-Bignum perl-Crypt-OpenSSL-RSA perl-Compress-Raw-Zlib perl-IO-Compress-Gzip perl-Digest-MD5 perl-Digest-SHA perl-Time-Piece perl-Time-Seconds perl-Time-HiRes perl-IO-Socket-SSL perl-Encode-Locale perl-Term-ANSIColor && yum clean all
cpanm -vn Test::More IO::Socket::SSL Webqq::Encryption Mojolicious MIME::Lite Mojo::SMTP::Client Mojo::IRC::Server::Chinese 
wget -q https://github.com/sjdy521/Mojo-Webqq/archive/master.zip -OMojo-Webqq.zip && unzip -qo Mojo-Webqq.zip && cd Mojo-Webqq-master && cpanm . && cd .. && rm -rf Mojo-Webqq-master Mojo-Webqq.zip
wget -q https://github.com/sjdy521/Mojo-Weixin/archive/master.zip -OMojo-Weixin.zip && unzip -qo Mojo-Weixin.zip && cd Mojo-Weixin-master && cpanm . && cd .. && rm -rf Mojo-Weixin-master Mojo-Weixin.zip
sudo firewall-cmd --zone=public --add-port=5000/tcp --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
firewall-cmd --list-all
