use Digest::MD5 qw(md5 md5_hex md5_base64); 
use Mojo::Weixin;
my $client = Mojo::Weixin->new(log_encoding=>"utf-8");
$client->load("ShowMsg");
#只修改你想要的推送通道  修改完后将其他三个推送通道全部删除，具体范围从每个推送通道的$client开始到});结束
#以下为 GCM 推送，其他推送通道以谷歌为例（谷歌通道需要梯子）
$client->load("GCM",data=>{
    api_url => 'https://gcm-http.googleapis.com/gcm/send',
    api_key=>'AIzaSyB18io0hduB_3uHxKD3XaebPCecug27ht8',
    registration_ids=>["如果你选择谷歌推送通道那么请将设备码替换本段文字，保留双引号"],
    #allow_group=>[""],##此处为群白名单
    #ban_group=>[],#此处为群黑名单
	#is_ban_official=>1,#屏蔽公众号
    #有白名单、黑名单需求的酌情更改以上三行,然后删除每行开头#使设置生效
	#设置样例 allow_group=>["一群","二群","三群"] 填入微信群名
});
#以下为 MiPush 推送,白名单、黑名单仿照GCM填写
$client->load("MiPush",data=>{
    registration_ids=>["请将设备码替换本段文字，保留双引号"],
});
#以下为 HwPush 推送,白名单、黑名单仿照GCM填写
$client->load("HwPush",data=>{
    registration_ids=>["请将设备码替换本段文字，保留双引号"],
});
#以下为 FmPush 推送,白名单、黑名单仿照GCM填写
$client->load("FmPush",data=>{
    registration_ids=>["请将设备码替换本段文字，保留双引号"],
    });
$client->load("Openwx",data=>{
    listen => [{host=>"0.0.0.0",port=>5000}, ] ,
});
#不需要 APP 内回复功能请删除以上三行（不包括被 # 号注释掉的几行）
$client->run();
