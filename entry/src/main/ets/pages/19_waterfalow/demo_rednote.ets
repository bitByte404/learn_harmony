import { it } from '@ohos/hypium'

interface WaterFlowItem {
  nickName: string
  avatar: string
  cover: string
  likedCount: string
  displayTitle: string
}

@Entry
@Component
struct waterFlowDemo {
  list: WaterFlowItem[] = [
    {
      nickName: 'RMIUC',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63896acf9cd275d6e92d8bca.jpg',
      cover: 'https://blog-img-bitebyte.oss-cn-chengdu.aliyuncs.com/img/avatar2.jpg',
      likedCount: '1w+',
      displayTitle: '💪🏻其实那些“秀身材”的人，自己都很痛苦😩'
    },
    {
      nickName: 'Konka就是康佳',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u00hslmkoe0407bna3hji6r7amf53o',
      cover: 'https://blog-img-bitebyte.oss-cn-chengdu.aliyuncs.com/img/avatar1.jpg',
      likedCount: '1k+',
      displayTitle: '在国外穿新中式旗袍是什么感觉？'
    },
    {
      nickName: 'ice-ccc',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/654ca7075bc17f00019cf218.jpg',
      cover: 'https://imgs.wuliner.cn/imgs/culture.jpg',
      likedCount: '100+',
      displayTitle: '#江疏影 #广州 '
    },
    {
      nickName: 'salvie-饿鱼儿',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2n6qrsj4jo0605p3ro593orafsk0eis0',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/283c2951c5dc0c07e5009f79761cac69/1040g2sg3103tsd2kls5g5p3ro593oraf0d88e60!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '真实的面包博主视频水平'
    },
    {
      nickName: '小居室',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6540ac8a11557fc364f5aa83.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/d08af6f96c8430ad36f472d17f01ab7c/spectrum/1040g34o30vsepb7km6705pa0kgfgrj099n7k71o!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '啊啊啊！买到了人生书桌了😭😭'
    },
    {
      nickName: '小哭包',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/65debeab4eabfff265c20188.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/0b895c6c06ecdeab71f3c993e1d34157/1040g2sg31002q44vm0005peumap198vju6uhk20!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '我的故事很简单你在身边在你身边'
    },
    {
      nickName: 'Dee',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2qns269gji0005p53udd486fkkjl6q3g',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/cea8f97e298b9f18d531e31366852048/1040g00830ve4ij06m6005p53udd486fkimvbuc0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '浓颜系 '
    },
    {
      nickName: '爆炸百科',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sk6lp8tk05g5oj3cllk1ph2js2vtpo',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/295d2ac73d401b40a526fcdf5e3975a0/spectrum/1040g34o3106j1dj65o005oj3cllk1ph2psql8q0!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '荷兰为何被称性自由之都？荷兰究竟多开放？'
    },
    {
      nickName: '波妞',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5c973892ab65af0001194315.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/f23c8510eb32bbc872b845632a4754db/1040g00831057c6re62005n3ogi04ci6hi5076kg!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '姐妹们，面试一定要小心，有些人是真小人啊。一见面不停打听我的考试时间，地点，考试'
    },
    {
      nickName: '花生优品百货',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/652d08b327f43d57947f5438.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/a5573d55d4a5b9bbad8b14fd03a4ec2e/1040g2sg31042ldkd5q005p34rtjah1q4k1nu03g!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '很难评价！谁发明的神奇勺子，都没见过😵‍💫'
    },
    {
      nickName: '子龙悟道',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo3109ji5n7mi005oj0i3o40i25lg0pkno',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/224b8140fa2770ee3054ae7420b94559/1040g2sg310abuk2pmm005oj0i3o40i252ua0p1g!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '真正有福气的人，这三点不碰。'
    },
    {
      nickName: 'Aheadhairmedia',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5fa2173840aa77000155fa8f.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/e346d54d51c462587eaa50affc8bb6a7/1040g2sg31011nig1lo005nt22qcg8s5h82fr7vo!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '金宝哥大闹沙龙 '
    },
    {
      nickName: '与晨,',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/60792655e79883d75c8b2f2c.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/29c1422b924dbe5e5552c53bf6802b52/1040g00830vcrkcks5k004bn0sa32kt03ropid1o!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '这种的我一般目送两百米'
    },
    {
      nickName: '小狗很懒呜呜',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rhg2epph8005nuevkbg97kn4fgt4r8',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/5148a15d405fd936c5cd67f999042ce1/1040g2sg3107ov5c15o005nuevkbg97knbodf2bg!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '终于知道碳循环为啥掉这么快了。。。'
    },
    {
      nickName: '我叫路小雨',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vs4n0kfm4005o5e3lsg8ku57r97t7o',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/d83d5bbc09f5014c6fb17f6c185b8e78/1040g2sg3103t0h0nls005o5e3lsg8ku5i9ddus8!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '在西双版纳/怎么能不体验一次雨林徒步呢！'
    },
    {
      nickName: '建造思维',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/622daf08e4e624a51343d971.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/327282d0522635cc9257d8ab9ed38995/spectrum/1040g0k0310afgmccmm005o1f7hcg87854tcmsoo!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '怎么有人的身体能这么丝滑 1710331'
    },
    {
      nickName: '陈都灵',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5ac9afe114de41045054fcc1.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/c9ad8a6aac71e3677985383ff276fcd3/1040g2sg30vpk5qo35q0g4a4c93nq6vv7esl31p0!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '真嘟素颜🤍 '
    },
    {
      nickName: '小王是树懒懒懒懒～',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/647acb158e2f44dc33e7bbc2.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/05a341ab4b3033a55afc4c197238071b/1040g2sg3106kf0ua5o005p2gedqnu9mgjjatvrg!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '当时只道是寻常 '
    },
    {
      nickName: 'lele',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/605374bc93e8f7dceacad17d.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/62bc61d422adbbe835f7e53a207088f3/1040g008310a7h13smc4g5n6k0nek226k3j8r1vo!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '中国初代小区的样子 '
    },
    {
      nickName: '粉红色的小鸭',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/645b7f83b46568f580649586.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/cd06253e04f26151b351b1823109a46c/110/0/01e5eb7e012b27bf0010000000018e1fe43bca_0.jpg!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '这是谁发明的，我谢谢他.......'
    },
    {
      nickName: '蜜蜂小熊（宁夏）',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30pvgmops7a005p86nm2ln7thrqn0t68',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/915c2abb42e56dd098a42046c20d70be/1040g2sg310adqvkj6c005p86nm2ln7th6m2uveg!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '听劝113天|宝宝你不再是会被嫌土的自卑鬼了'
    },
    {
      nickName: 'J公司都不是好东西',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61ed5d66e29249da2eded104.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/5dbac878f2be161451eede14eacf93e3/1040g00830vtdtv7b5q5g5o7dhqmgbp6lh1g62sg!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '终于给我磕到一口真夫妻'
    },
    {
      nickName: '钟祥珍珍姐',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61bc428c3296fdcf032ccce6.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/9373d97f72929782968ca5c8774da44a/1040g0083102kl4a966005ntqg4gg816n4lqb0e8!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '无论生活多么不完美，总要继续下去，面对苦 难和现实，唯有努力拼搏，我们相信这么好'
    },
    {
      nickName: 'Yu.46',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/64127d4b281f8089224df629.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/af102e7c12b98ce062771959aedf598e/1040g0083107lkink5q005o1bp60gbu84dn0mkj8!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '柚子 就拜托你了 '
    },
    {
      nickName: 'hahaha_Hannah',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6329321346794d7a05b7997b.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/e990249d0d9dd6f4c9457474cdf27a6c/1040g2sg310abi5a86e004a01809dmajt0d3gehg!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '当我在清华上学还要当博主参加活动 •͈ᴗ⁃͈★'
    },
    {
      nickName: '是小老弟啊',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61ba7a579cc2421a7d3f1d1c.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/7b7c63783d66a5bdf36f3ca376ad3551/1040g2sg310579iv15q10401f1i551giaupg80j0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '不是在吃糖就是在吃糖的路上'
    },
    {
      nickName: '丸子日记',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/642d57013efe33e0b0d46e82.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/e8f12581681094f9a2df7105e98194f6/spectrum/1040g0k0310971d8l6g005obgtmq0klr35un5m98!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '满分火锅蔬菜，全都替你尝一遍~'
    },
    {
      nickName: '禧悦',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30ofcg2jsie7g5niebk8087c5nmc18mg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/ce50c8a75ba631b53f00c914b3b1eca3/1040g2sg310agp4gf6o005niebk8087c50h42t90!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '一家开在农村的女装工作室'
    },
    {
      nickName: '小A舞蹈留学',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/62fb6e7f29e70193d4ad4e2c.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/dac3d129cdbea71693393b7478eadcd1/1040g0083103ua4th605g5ohcoflk0rl269nt618!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '有的人走路都带风 '
    },
    {
      nickName: '中国国家地理景观',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f08384c74528b0001cb981c.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/2f5b4d392872ad2056d8a442fbf0ebd2/1040g2sg3109o2g1l6a0g5nnttei0bpv60p4shm0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '中国国家地理 |今天是一个神秘而浪漫的日子'
    },
    {
      nickName: '我是香秀',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f0ace11074bc00001f5aea2.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/db541694601329d69afaca848340cec8/1040g00830vqu0go7lu0048btcesbknvecml36t8!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '姐姐来了 '
    },
    {
      nickName: '泡芙',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f9a41327a15a3000173da86.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/e9460ce0b55fd80504e49e4b12971747/1040g2sg30vlqp0oi5s004acl4a3vu2k20rssm00!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '圆头扁头一戴头箍就知道了'
    },
    {
      nickName: 'GUNCHILL前哨站',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rosj580ii005op705tovdbub5sg2a0',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/9d09615c91c1591654a09d9e88940596/1040g00831093ervr6o005op705tovdbusda1q0g!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '178｜当我妹妹叫我接她放学，穿帅点时……'
    },
    {
      nickName: '半壁Bambi',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61b5fd985d0957dd71712e52.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/0e046a92f67f8c304cbca1974ccf6b49/1040g00830vhv7nel6600400qm1pjutm1q19sheg!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '台湾的麻薯和芋泥，强得可怕'
    },
    {
      nickName: '兰岚 Lillian 在美国',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30urtm2a9540040lasf4urik0lpt439o',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/d9130338bdc849e428930f710691b34e/spectrum/1040g0k031004o6v1m40040lasf4urik0ul87vu0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '孩子来美国1年半，她的英文怎么样了？'
    },
    {
      nickName: '三哥与焦焦',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u6f49oc5i005n1nt43he6p5fq49848',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/2f8d573e07aefd220992b7ea34da0d96/1040g2sg3107dg7da5o005n1nt43he6p5nr210fg!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '这动作是认真的吗？熟练得让人心疼~夫妻日常 内容过于真实 三哥与焦焦'
    },
    {
      nickName: '🌚心碎豆腐脑🌝',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63091346ea5a9bfd7c647596.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/95edb034eab8e46e7a70d0a918a93e8e/1040g2sg30vki12dp5u004bcsqgnge1hk7kd9n48!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '带上皇冠的那一刻，第一视角哦'
    },
    {
      nickName: '私人靖地',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30s4rl3kf2m40456gm1l08f46ts55sbo',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/871d5a6f9fc97017d9daa5be6b9e889a/1040g2sg310a9vvlm6i6g456gm1l08f46i3fteq0!nc_n_webp_mw_1',
      likedCount: '10+',
      displayTitle: '圆圆 x 三只小山羊'
    },
    {
      nickName: '美嘉',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/64be89485e1c3d56befbad94.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/4194c7e6b9d54d246a77d773b6bc70df/1040g00830vketmd25u004a4185p9agsv9sjrbcg!nc_n_webp_mw_1',
      likedCount: '10+',
      displayTitle: '等三年终于开始扩大场地啦～'
    },
    {
      nickName: '百变小厨坊',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oa2i1ua26005n5d581k5s5jq8hmjm8',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/b6b05c8c3c7cd5923ea9dea7ec21b7d7/1040g2sg31017e33e660g5olr0206sstiliatu0o!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '炒平菇，切记别炒水和直接炒，教你一招，滑嫩'
    },
    {
      nickName: 'Alcohol姜酒精东京～买买买',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tbfb5ul440048ntmuabppvoosdmi98',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/3746952081e1077e15d2bc921e610672/1040g0083107mn30hm60048ntmuabppvo2ce46m0!nc_n_webp_mw_1',
      likedCount: '7',
      displayTitle: '最没用代🐶 顺利出境'
    },
    {
      nickName: '李特是个搬运工',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oqoaf9n34605p5t63k56vp974h589o',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/d964de7ca62109652bfd91ba5106bd08/1040g2sg30vnv017ilu0g5p5t63k56vp9gchc46g!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '巴黎时装周吴千语好美'
    },
    {
      nickName: '逸藝艺',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6332b2fb867ce93b97b65ff0.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/1fc06ed94019e22c80d10da49b952d2c/1040g00830vuq1525lu6g5of8rk540o50l0g929g!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '爽了，真的爽了！这才是好投票'
    },
    {
      nickName: 'Mr Cheung',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5d8765fc0b326b000110c71e.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/d9b11aaddb6914db835941d3944ed099/1040g0083107c94k3lu005nc7clh0bc07fsg4ii0!nc_n_webp_mw_1',
      likedCount: '10+',
      displayTitle: '寻找日本中古游戏机供应商 有介绍的有酬'
    },
    {
      nickName: '乎乎',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/65d89b2a01d38b43fb742838.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/21451a3c9758f38f8793bcf6aa8c1604/1040g00830vvvsli9m2005ok26bgoc73mp77jtcg!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '当年明月的这段采访堪称一绝。'
    },
    {
      nickName: 'Cinnamon',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5fbbc4f90e745f00013bb784.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/01e779c2c829e1fa938dcb3fda6cf973/1040g00830verejsfm2005ntroja0906prjjedog!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: 'chase存款过亿留念'
    },
    {
      nickName: '十八线不知名班主任',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310468dpmm0105p74bll0a3ljvul1qoo',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/ac9954d2e297cdd499fbec6a2119b8e6/1040g0083106gkdqn5q005p74bll0a3ljldcli80!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '榨菜肉末粉｜对这碗粉毫无抵抗力'
    },
    {
      nickName: '钙奶小饼干',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u3ou2cm5c50490tr0ebi1pjjvi0bl0',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/771f106345030fd8983b4f9300845c0c/1040g00830vj94ddhlq6g490tr0ebi1pj3i8spfg!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '小水现在算泰国一线女星吗？'
    },
    {
      nickName: '阚清子',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5af99c3bd2c8a534f92da600.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/c52c1e32c8bebd0ae2120809e4152e1d/1040g2sg30vhfb6nilq0g4a10urbk80jc52o9vm0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '🎀今日不减肥😂 '
    },
    {
      nickName: '胖崽崽和南瓜瓜',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/60937c5a9e0bc600013f12ef.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/5d8b78619fd901f202b0959454dfb5c5/1040g2sg30vlth3b6lo0043o04clf3s3o69ee9do!nc_n_webp_mw_1',
      likedCount: '10+',
      displayTitle: '在家拍百岁照照片之道具🍊'
    },
    {
      nickName: '莎莎 Samantha',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30uegk7jt5idg5pdl017jkmmh09b8ohg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/48cd164eba34c39a98fbff7615cfe777/1040g008310790he5m4005pdl017jkmmh30vbkh0!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '什么零配，全靠演技，国外旅游顺便买到爱马仕'
    },
    {
      nickName: '我的小糯米呀',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61e2583a0000000021020580.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/80c516999505c2a53ac2d9c9eed08472/1040g2sg3102jh5pf62005of2b0t8c1c0qcihkk0!nc_n_webp_mw_1',
      likedCount: '10+',
      displayTitle: '路过一片很好看的花海📨🌷'
    },
    {
      nickName: '梦想环骑中国',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vq1s5knm26g5ngde65084bvp1tbcr8',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/0f50dd36a8103b71ed59d7e62a9c1667/1040g2sg310582gj35u6g5ngde65084bv6o8os3o!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '宾馆逸事😂😂😂'
    },
    {
      nickName: '小哭包柒',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30o21ucpahq0g5nue6fs09226c6bu098',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/8d9808c7d15a8cf026b2ad7cb7fc2266/1040g00830vrol67vm2005nue6fs09226ctmtlso!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '阮经天的肩膀也太宽了！！！！！'
    },
    {
      nickName: '卡斯拉',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tr35fpp4s005oem79v8dc6aebm86to',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/35a0bf9900554b4ff9e6aaab217dcce9/1040g00830vf5hcutlo005oem79v8dc6ammac078!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '晚晚说没有她，就没有木木美术馆'
    },
    {
      nickName: '猴猴',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63f76dbdfca3d98c0e1affb2.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/0b94087155535ab6dcfef06207f7d505/1040g0083108ufgqomg005ns8cq2g8h7apn0m68g!nc_n_webp_mw_1',
      likedCount: '1k+',
      displayTitle: '开始期待春游野餐了！'
    },
    {
      nickName: '爱意随风散',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vg56lrd66005o7m9kh08p1v8vg8p50',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/fd437983d60f12c9e066e0c4d551cf90/1040g2sg30vhvbp5c60005o7m9kh08p1v7tgc518!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '已经开始期待夏天了！安利给全世界的夏季饮'
    },
    {
      nickName: '热心网友',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310c276ou6e005p4083cn561gscosqd8',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/c78143858e08422fc360442881fc43af/1040g00830vh096grlq105p4083cn561g9h7nt50!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: '去年过年vs今年过年'
    },
    {
      nickName: '绿老头的世界',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sqlt5rok4005ornhm97rsa628qfh7g',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/a4ab99bb36bc6634f2c6b67920cce558/1040g00831057k8k7m0005ornhm97rsa61tu6if0!nc_n_webp_mw_1',
      likedCount: '1w+',
      displayTitle: 'i人表达爱意的小动作be like：'
    },
    {
      nickName: '甜甜的田',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63415b55cf23fe634d89e74f.jpg',
      cover: 'http://sns-webpic-qc.xhscdn.com/202403190659/c1434745b0e38533bb73eb27d93f44e1/1040g0083103g4udpm4004a1c9e59ea21n5jl77o!nc_n_webp_mw_1',
      likedCount: '100+',
      displayTitle: '两岁女宝｜好像拍到了人生照片！太美了吧～'
    }
  ]

  build() {
    Column() {
      Image($r('app.media.ic_xhs_top'))
        .width('100%')
      WaterFlow() {
        ForEach(this.list, (item: WaterFlowItem) => {
          FlowItem() {
            Column() {
              Image(item.cover)
                .width('100%')
                .backgroundColor(Color.Gray)
              Column({ space: 10 }) {
                Text(item.displayTitle)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                Row() {
                  Row({ space: 5 }) {
                    Image(item.avatar)
                      .width(20)
                      .borderRadius(10)
                    Text(item.nickName)
                      .fontSize(12)
                  }

                  Row({ space: 5 }) {
                    Image($r('app.media.ic_public_favor'))
                      .width(15)
                      .fillColor(Color.Gray)
                    Text(item.likedCount)
                      .fontColor(Color.Gray)
                      .fontSize(12)
                  }
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .padding(10)
            }
            .borderRadius(5)
            .clip(true)
          }
          .backgroundColor(Color.White)
        })
      }
      .edgeEffect(EdgeEffect.Spring)
      .backgroundColor('#f3f3f3')
      .rowsGap(5)
      .columnsGap(5)
      .columnsTemplate('1fr 1fr')
      .padding(5)
      .layoutWeight(1)


      Image($r('app.media.ic_xhs_bottom'))
        .width('100%')
    }

  }
}