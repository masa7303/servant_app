User.create!(
  id: 1,
  name: '山田花子',
  email: 'yamada@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '東京都',
  municipality: '渋谷区',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 2,
  name: '田中一郎',
  email: 'tanaka@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '富山県',
  municipality: '富山市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 3,
  name: '花田まり',
  email: 'hanada@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '千葉県',
  municipality: 'いすみ市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 4,
  name: '太田雄二',
  email: 'oota@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '沖縄県',
  municipality: '那覇市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 5,
  name: '石原恵梨',
  email: 'ishihara@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '青森県',
  municipality: '八戸市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 6,
  name: '古川大志',
  email: 'hurukawa@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '北海道',
  municipality: '札幌市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 7,
  name: '森永歩',
  email: 'morinaga@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '石川県',
  municipality: '金沢市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 8,
  name: '安部夏樹',
  email: 'abe@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '宮城県',
  municipality: '仙台市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 9,
  name: '後藤拓実',
  email: 'gotou@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '富山県',
  municipality: '魚津市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

User.create!(
  id: 10,
  name: '丹治郁人',
  email: 'tanji@test.com',
  password: 'password',
  password_confirmation: 'password',
  prefecture: '広島県',
  municipality: '広島市',
  created_at: "2020-01-01 00:00:00",
  updated_at: "2020-01-01 00:00:00"
)

user = User.find(1)
user.image.attach(io: File.open('app/assets/images/icon-01.jpg'), filename: 'icon-01.jpg')

user = User.find(2)
user.image.attach(io: File.open('app/assets/images/icon-02.jpg'), filename: 'icon-01.jpg')

user = User.find(3)
user.image.attach(io: File.open('app/assets/images/icon-03.jpg'), filename: 'icon-01.jpg')

user = User.find(4)
user.image.attach(io: File.open('app/assets/images/icon-04.jpg'), filename: 'icon-01.jpg')

user = User.find(5)
user.image.attach(io: File.open('app/assets/images/icon-05.jpg'), filename: 'icon-01.jpg')

user = User.find(6)
user.image.attach(io: File.open('app/assets/images/icon-01.jpg'), filename: 'icon-01.jpg')

user = User.find(7)
user.image.attach(io: File.open('app/assets/images/icon-02.jpg'), filename: 'icon-01.jpg')

user = User.find(8)
user.image.attach(io: File.open('app/assets/images/icon-03.jpg'), filename: 'icon-01.jpg')

user = User.find(9)
user.image.attach(io: File.open('app/assets/images/icon-04.jpg'), filename: 'icon-01.jpg')

user = User.find(10)
user.image.attach(io: File.open('app/assets/images/icon-05.jpg'), filename: 'icon-01.jpg')

Relationship.create!([
  {user_id: 1, follow_id: 2},
  {user_id: 1, follow_id: 3},
  {user_id: 1, follow_id: 4},
  {user_id: 1, follow_id: 5},
  {user_id: 1, follow_id: 6},
  {user_id: 1, follow_id: 7},
  {user_id: 1, follow_id: 9},
  {user_id: 2, follow_id: 1},
  {user_id: 2, follow_id: 3},
  {user_id: 2, follow_id: 4},
  {user_id: 2, follow_id: 5},
  {user_id: 2, follow_id: 6},
  {user_id: 2, follow_id: 7},
  {user_id: 2, follow_id: 8},
  {user_id: 3, follow_id: 2},
  {user_id: 3, follow_id: 5},
  {user_id: 3, follow_id: 6},
  {user_id: 3, follow_id: 8},
  {user_id: 3, follow_id: 9},
  {user_id: 4, follow_id: 1},
  {user_id: 4, follow_id: 2},
  {user_id: 4, follow_id: 3},
  {user_id: 4, follow_id: 5},
  {user_id: 4, follow_id: 6},
  {user_id: 4, follow_id: 7},
  {user_id: 4, follow_id: 8},
  {user_id: 5, follow_id: 1},
  {user_id: 5, follow_id: 2},
  {user_id: 5, follow_id: 3},
  {user_id: 5, follow_id: 4},
  {user_id: 5, follow_id: 6},
  {user_id: 5, follow_id: 7},
  {user_id: 5, follow_id: 8},
  {user_id: 6, follow_id: 1},
  {user_id: 6, follow_id: 2},
  {user_id: 6, follow_id: 3},
  {user_id: 6, follow_id: 4},
  {user_id: 6, follow_id: 8},
  {user_id: 6, follow_id: 9},
  {user_id: 7, follow_id: 1},
  {user_id: 7, follow_id: 2},
  {user_id: 7, follow_id: 3},
  {user_id: 7, follow_id: 4},
  {user_id: 7, follow_id: 5},
  {user_id: 7, follow_id: 6},
  {user_id: 7, follow_id: 9},
  {user_id: 8, follow_id: 2},
  {user_id: 8, follow_id: 3},
  {user_id: 8, follow_id: 4},
  {user_id: 9, follow_id: 5},
  {user_id: 9, follow_id: 6},
  {user_id: 9, follow_id: 7},
  {user_id: 9, follow_id: 8},
  {user_id: 10, follow_id: 2},
  {user_id: 10, follow_id: 3},
  {user_id: 10, follow_id: 4},
  {user_id: 10, follow_id: 5},
  {user_id: 10, follow_id: 6},
  {user_id: 10, follow_id: 7},
  {user_id: 10, follow_id: 9},
])

Task.create!([
  {id: 1, user_id: 1, section: '税務', name: '確定申告の窓口混雑対策について', description: '「確定申告の待ち時間が長い！」とクレームがあります。みなさんのところではどういった対策をしていますか？', tag_list: '確定申告, 待ち時間'},
  {id: 2, user_id: 2, section: '人事', name: '超過勤務の上限について', description: '予算縮小に伴い、超過勤務の上限値を設定してはどうか？という案があがっています。そういったラインを設定している自治体はありますでしょうか？', tag_list: '残業代'},
  {id: 3, user_id: 3, section: '広報', name: '広報紙発行に係る体制について', description: 'これまでは内容の素材を提供し、業者にレイアウトや印刷をしてもらう体制で広報紙を発行していましたが、先進自治体にならいDTPを導入していこうという動きがあります。みなさんの自治体は委託でしょうか？DTPでしょうか？またそれぞれどのような苦労があるか教えていただければ幸いです。', tag_list: '広報紙, DTP'},
  {id: 4, user_id: 4, section: '観光', name: '民間企業の観光施設誘致について', description: '民間企業が運営する観光施設の誘致に関する、助成金や関連制度はありますか？', tag_list: '観光施設, 民間企業, 助成金'},
  {id: 5, user_id: 5, section: '医療', name: '医療費助成に関するレセプト遅れについて', description: '医療費助成を行う際、医療機関からのレセプトを参照すると思うのですが、機関によっては遅れるところがありクレームにつながる場合があります。みなさんのところではそういったことがあった時に、どういった対応をしていますか？', tag_list: '医療費助成, レセプト'},
])

Comment.create!([
  {id: 1, user_id: 2, task_id: 1, body: '待ち時間の目安をTwitterで発信しています。'},
  {id: 2, user_id: 3, task_id: 1, body: '整理券を発行して、順番を明確にしています。'},
  {id: 3, user_id: 4, task_id: 1, body: '必要書類の持参を確認するスタッフを別途配置し、窓口の効率化を図っています。'},
])

Comment.create!([
  {id: 4, user_id: 3, task_id: 2, body: '特に上限ラインはなく、青天井です。'},
  {id: 5, user_id: 4, task_id: 2, body: 'こちらは20時間がラインで、それ以上は報告義務があります。'},
])

Comment.create!([
  {id: 6, user_id: 4, task_id: 3, body: '委託です。デザインやレイアウトに関する取り決めが多く、自由度が低いというストレスがあります。'},
  {id: 7, user_id: 5, task_id: 3, body: 'DTPです。自由度が高い分、毎月の構成やレイアウトに四苦八苦しています。'},
  {id: 8, user_id: 6, task_id: 3, body: '委託でしたが、今月からDTPになりました。締め切りを守らない課があり、いつも困っています。どこも一緒だとは思いますが・・・・・'},
])

Comment.create!([
  {id: 9, user_id: 1, task_id: 4, body: '従業員100人以下の中小企業を対象に、上限100万円の助成金制度があります。'},
])

Comment.create!([
  {id: 10, user_id: 6, task_id: 5, body: '医療機関に個別で連絡をとっています。'},
  {id: 11, user_id: 7, task_id: 5, body: '振込日を月単位から隔週に設定することで、少しでもはやく還付できるようにしています。'},
  {id: 12, user_id: 8, task_id: 5, body: '特に対策はしていませんね。'},
])

Shop.create!([
  {id: 1, user_id: 1, name: '麺屋　ひまわり', prefecture: 13, address: '中野区１丁目', phone: '000-000-0001'},
  {id: 2, user_id: 2, name: '居酒屋だるま', prefecture: 16, address: '富山市１丁目', phone: '000-000-0002'},
  {id: 3, user_id: 3, name: '海鮮祭り', prefecture: 12, address: 'いすみ市１丁目', phone: '000-000-0003'},
  {id: 4, user_id: 4, name: '沖縄の風', prefecture: 47, address: '那覇市１丁目', phone: '000-000-0004'},
  {id: 5, user_id: 5, name: 'BLUE OCEAN', prefecture: 2, address: '八戸市１丁目', phone: '000-000-0005'},
  {id: 6, user_id: 6, name: 'ちゃんこ北の大地', prefecture: 1, address: '札幌市１丁目', phone: '000-000-0006'},
  {id: 7, user_id: 7, name: '金沢イタリー', prefecture: 17, address: '金沢市１丁目', phone: '000-000-0007'},
  {id: 8, user_id: 8, name: '豚カツ　木村', prefecture: 4, address: '仙台市１丁目', phone: '000-000-0008'},
  {id: 9, user_id: 9, name: 'noodle store', prefecture: 16, address: '魚津市１丁目', phone: '000-000-0009'},
  {id: 10, user_id: 10, name: '番屋の寿司', prefecture: 34, address: '広島市１丁目', phone: '000-000-0010'},
])

shop = Shop.find(1)
shop.image.attach(io: File.open('app/assets/images/ramen.jpg'), filename: 'ramen.jpg')

shop = Shop.find(2)
shop.image.attach(io: File.open('app/assets/images/beer.jpg'), filename: 'beer.jpg')

shop = Shop.find(3)
shop.image.attach(io: File.open('app/assets/images/sashimi.jpg'), filename: 'sashimi.jpg')

shop = Shop.find(4)
shop.image.attach(io: File.open('app/assets/images/meat.jpg'), filename: 'meat.jpg')

shop = Shop.find(5)
shop.image.attach(io: File.open('app/assets/images/yakitori.jpg'), filename: 'yakitori.jpg')

shop = Shop.find(6)
shop.image.attach(io: File.open('app/assets/images/nabe.jpeg'), filename: 'nabe.jpeg')

shop = Shop.find(7)
shop.image.attach(io: File.open('app/assets/images/pasta.jpg'), filename: 'pasta.jpg')

shop = Shop.find(8)
shop.image.attach(io: File.open('app/assets/images/tonkatsu.jpg'), filename: 'tonkatsu.jpg')

shop = Shop.find(9)
shop.image.attach(io: File.open('app/assets/images/ramen.jpg'), filename: 'ramen.jpg')

shop = Shop.find(10)
shop.image.attach(io: File.open('app/assets/images/sushi.jpg'), filename: 'sushi.jpg')

Review.create!([
  {id: 1, shop_id: 1, user_id: 1, rate: 3.5, title: '王道ラーメン', body: '結局こういうラーメンが一番美味しいですね！若い頃は家系などのこってりしたラーメンもよく食べていましたが、最近はこうしたあっさり王道ラーメンが好みです。家から近いのでかなりの頻度で通っています。'},
  {id: 2, shop_id: 2, user_id: 2, rate: 4.0, title: 'ラーマンもさることながら、チャーシューが美味しい', body: '以前から気になっていたので行ってみました！スープを一口、なるほど確かにこれは美味しい。しかしそれよりも驚いたのはチャーシューの美味しさです！丁寧に下処理されトロトロに煮込まれたチャーシューは、これまで食べてきたラーメンの中でも一番でした。今度はぜひチャーシュー麺にしたいと思います。ごちそうさまでした。'},
])

review = Review.find(1)
review.review_image.attach(io: File.open('app/assets/images/ramen-01.jpg'), filename: 'ramen-01.jpg')

review = Review.find(2)
review.review_image.attach(io: File.open('app/assets/images/ramen-02.jpg'), filename: 'ramen-02.jpg')

Like.create!([
  {id: 1, shop_id: 2, user_id: 1},
  {id: 2, shop_id: 3, user_id: 1},
  {id: 3, shop_id: 4, user_id: 1},
  {id: 4, shop_id: 8, user_id: 1},
])
