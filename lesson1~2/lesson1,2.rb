=begin
2018/11/13
「たのしいRuby　第五版」を使ってRubyを勉強します
=end
puts "Hello,world!"
puts 1+2

a = 20
if a >= 10
  print("greater\n")
elsif a <= 9
  print("smaller\n")
end

i = 1
while  i <= 10
  print i,"\n"
  i += 1
end

2.times do
  print "iterator\n"
end

names = ["小林","林","高野","盛岡"]

#　空の配列オブジェクトをつくる
ages = []

names[0] = "岡田"
print "最初の名前は" , names[0] , "です\n"

# 配列の中身は数字と文字列混ぜることもできる

print names.size
print ages.size

#配列の要素をすべて取り出す
names.each do |n|
  puts n
end

# シンボル
sym = :foo
print sym
# シンボルを文字列に
print sym.to_s
# 文字列をシンボルに
print "foo".to_sym

#ハッシュ生成

song = {:title => "MINT" , :artist => "Suchmos"}
person = {name: "岡田" , university: "明治"}
print song[:title]
print person[:university]

#ハッシュの中身をすべて取り出す
song.each do |title,value|
  puts "#{title}:#{value}"
end

song.each do |title,value|
  puts title , value
end

#正規表現　特定の文字列のパターンに対する処理　マッチング
#/パターン/ =~ マッチングしたい文字列
#先頭文字の列が0
#//iとすると英字の大文字小文字区別なし

puts /Ruby/ =~ "Hello Ruby"
puts /Ruby/i =~ "たのしいruby"


#if文やwhile文ではfalseもnilも偽で扱う

names.each do |name|
  if /岡田/ =~ name
    puts name
  end
end
