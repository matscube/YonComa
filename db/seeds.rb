# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Document.delete_all
Product.delete_all

Product.create(
	date:  '2014-01-01',
	title: '（教育２０１４　変わるまなびや）宇宙飛行士・古川聡さんインタビュー　／神奈川県',
	contents: 'dummy',
	sent1: '　近くの山で「基地」をつくって遊ぶのも楽しかった。当時テレビで見ていた「ウルトラセブン」のまねです。実は、宇宙に興味をもったきっかけもウルトラセブンなんです。',
	sent2: '　高校２年で医師になると決めました。でも必死に勉強しても、模擬試験ではずっと最低ランクの「Ｅ」判定。焦って寝ないで勉強したけど、どうもうまくいかない。私はしっかり寝ないとダメなタイプだと気づいて、起きている時間に集中すると割り切りました。',
	sent3: '　いろいろなことに手を出してみることも大切です。小学生のころには野球のほかにピアノ、水泳、習字。中学生のときには卓球にも夢中になりました。でも、自分より上手な人がいたり、向いていないと思ったりして、野球以外はどれも途中でやめました。',
	sent4: '　失敗から学ぶという点では、大学まで続けた野球とそっくりです。一生懸命練習して試合に臨むけど、勝てない。「なぜだろう」と考えて次の練習に生かす。野球は、私の原体験です。',
	image1: 'http://192.168.100.126:3000/assets/image1.jpg',
	image2: 'http://192.168.100.126:3000/assets/image2.jpeg',
	image3: 'http://192.168.100.126:3000/assets/image3.JPG',
	image4: 'http://192.168.100.126:3000/assets/image4.jpg'
	)

data = CSV.read(File.dirname(__FILE__) + "/../public/test.csv", encoding: "SJIS", col_sep: "\t")

cnt = 0
data.each do |d|	
	document = Document.new()

  document[:date] = d[1]
  document[:title] = d[10]
  document[:contents] = d[11]
#	document[:contents]

  text = document[:contents]



  sents = text.split('<CR><CR>')
  next if sents.length < 4

  a =  sents[0].split('<CR>')
  b =  sents[1].split('<CR>')
  c =  sents[2].split('<CR>')
  d =  sents[3].split('<CR>')

  p a[0].nil?
  p b[0].nil?
  p c[0].nil?
  p d[0].nil?
  p a[0]
  p b[0]
  p c[0]
  p d[0]
#  next if a[0].nil? || b[0].nil? || c[0].nil? || d[0].nil?
  next if a[1].nil? || b[1].nil? || c[1].nil? || d[1].nil?

  document[:sent1] = a[1]
  document[:sent2] = b[1]
  document[:sent3] = c[1]
  document[:sent4] = d[1]

#  document[:sent1] = a[0]
#  document[:sent2] = b[0]
#  document[:sent3] = c[0]
#  document[:sent4] = d[0]

  p document

  document.save

  cnt += 1
  break if cnt > 20
=begin
  cnt = 0
  sents.each do |s|
  	s.gsub!(/<CR>/, '')
  	s = s.split('。')
  	 s[0]

  	if cnt == 0
  		document[:sent1] = s[0]
  	else cnt == sents.length - 1
  		document[:sent4] = s[0]
  	end
  	cnt = cnt + 1
  end

  p document

  cnt += 1
  break if cnt > 10
=end
end
