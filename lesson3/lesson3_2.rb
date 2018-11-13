=begin
「たのしいRuby」の第三章を勉強します
=end

#正規表現オブジェクトの生成 Regexp.new(str)


#ファイルの中でその文字列が含まれる行を抽出できる
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line
  end
end
file.clone
