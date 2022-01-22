require "csv"

puts "1（新規でメモを作成）,　2（既存のメモを編集する）"

memo_type = gets.to_s.chomp


if memo_type == "1"
  puts "拡張子を取り除いたファイル名を入力してください"
  file_name = gets.chomp
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl＋Dを押します"
 
  contents = gets.chomp
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << ["#{contents}"]
  end
  
elsif memo_type == "2"
  puts "編集したい拡張子を取り除いたファイル名を入力してください"
  file_name = gets.chomp
  puts "追記したい内容を入力してください"
  puts "完了したらCtrl＋Dを押します"

  contents = gets.chomp
  
  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << ["#{contents}"]
  end
  
else
  puts "キャンセルされました"
end

       
  
