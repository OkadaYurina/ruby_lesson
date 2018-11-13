=begin
「たのしいRuby」の第三章を勉強します
=end
first = ARGV[0]
print "Happybirthday, " , first , "!\n"

#.to_i 文字列を数字に変換する

num0 = ARGV[0].to_i
num1 = ARGV[1].to_i

puts num0+num1
puts num1-num0

#

filename = ARGV[2]
file = File.open(filename)
text = file.read
print text
file.close

#文字化けは　ruby -E UTF-8　でなおる

filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  print line
end
file.close
