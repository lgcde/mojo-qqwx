use Webqq::Encryption qw(pwd_encrypt);
use Digest::MD5 qw(md5 md5_hex md5_base64); 
use Mojo::Webqq;
my $client = Mojo::Webqq->new(log_encoding=>"utf-8",is_init_group=>0,is_update_group=>0);
$client->load("ShowMsg");
#只修改你想要的推送通道  修改完后将其他三个推送通道全部删除，具体范围从每个推送通道的$client开始到});结束
#以下为 GCM 推送，其他推送通道以谷歌为例（谷歌通道需要梯子）
$client->load("GCM",data=>{
    api_url => 'https://gcm-http.googleapis.com/gcm/send',
    api_key=>'AIzaSyB18io0hduB_3uHxKD3XaebPCecug27ht8',
    registration_ids=>["如果你选择谷歌推送通道那么请将设备码替换本段文字，不包括双引号"],
    allow_group=>["接受群消息的号码，如需要推送全部群消息可删除这一行，每个群号码之间使用 ""使用 , 分隔群号"],
    ban_group=>[],
    allow_discuss=>[],  #此处为讨论组，填写格式同上
    ban_discuss=>[],  #此处为讨论组，填写格式同上
#根据实测，已经屏蔽的群消息也会推送，所以请将屏蔽的群号码用""包起来用,分隔填进上行的[]中
});
#以下为 MiPush 推送
$client->load("MiPush",data=>{
    registration_ids=>["请将设备码替换本段文字，不包括双引号"],
    allow_group=>[""],
    ban_group=>[],
    allow_discuss=>[],
    ban_discuss=>[],
});
#以下为 HwPush 推送
$client->load("HwPush",data=>{
    registration_ids=>["请将设备码替换本段文字，不包括双引号"],
    allow_group=>[""],
    ban_group=>[],
    allow_discuss=>[],
    ban_discuss=>[],
});
#以下为 FmPush 推送
$client->load("FmPush",data=>{
    registration_ids=>["请将设备码替换本段文字，不包括双引号"],
    allow_group=>[""],
    ban_group=>[],
    allow_discuss=>[],
    ban_discuss=>[],
    });
$client->load("Openqq",data=>{
    listen => [{host=>"0.0.0.0",port=>5000}, ] ,
});
#不需要 APP 内回复功能请删除以上三行（不包括被 # 号注释掉的几行）
$client->run();
