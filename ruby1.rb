require 'csv'

puts "1(新規でメモを作成) 2(既存のメモを編集)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモの内容を入力してください"
  puts "入力後は、control+Dで保存できます"
  memo_contens = readlines.map(&:chomp)
  
  CSV.open("#{file_name}.csv",'w') do |memo|
    memo << memo_contens
  end
elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモの追加内容を入力してください"
  puts "入力後は、control+Dで保存できます"
  memo_contens = readlines.map(&:chomp)
  
  CSV.open("#{file_name}.csv",'a') do |memo|
    memo << memo_contens
  end
else
  puts "もう一度やり直してください"
end
