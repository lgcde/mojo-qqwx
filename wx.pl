use Digest::MD5 qw(md5 md5_hex md5_base64); 
use Mojo::Weixin;
my $client = Mojo::Weixin->new(log_encoding=>"utf-8");
$client->load("ShowMsg");
$client->load("MiPush",data=>{
    registration_ids=>[""],#输入你自己从 GCMForMojo APP中获取到的令牌
    allow_group=>[""],#接收群消息的名称，如需要推送全部群消息可删除这一行，每个群号码之间使用 "", 分隔
    ban_group=>[],
    allow_discuss=>[],
    ban_discuss=>[],
    #此处为讨论组，填写格式同上
	is_ban_official=>1, #屏蔽公众号,如果需要接收删除这一行
});
$client->load("Openwx",data=>{
    listen => [{host=>"0.0.0.0",port=>5000}, ] ,
});
#不需要 APP 内回复功能请删除以上三行（不包括被 # 号注释掉的几行）
$client->run();
