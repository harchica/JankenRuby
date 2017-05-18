def win(input,me,gcp)
  puts "あなたの手:#{gcp[input]},わたしの手:#{gcp[me]}"
  puts "あなたの勝ちです"
  exit
end
def lose(input,me,gcp)
   puts "あなたの手:#{gcp[input]},わたしの手:#{gcp[me]}"
   puts "あなたの負けです"
   exit
end
def onemore(input,me,gcp)
  puts "あなたの手:#{gcp[input]},わたしの手:#{gcp[me]}"
  puts "あいこで"
end
def wrong
  puts "無効な値です"
  puts "もう一回!"
end

while true do
gcp = ["グー","チョキ","パー"]
puts"最初はグー、じゃんけん..."
 puts "[0] : #{gcp[0]}\n[1] : #{gcp[1]}\n[2] : #{gcp [2]}"
input = gets.to_i
me = rand(3)

if (input == 0 && me == 1) || (input == 1 && me ==2) || (input == 2 && me == 0)
  win(input,me,gcp)
elsif (input == 0 && me ==2) || (input == 1 && me == 0) || (input == 2 && me == 1)
  lose(input,me,gcp)
elsif (input == 0 && me == 0) || (input == 1 && me == 1) || (input == 2 && me == 2)
  onemore(input,me,gcp)
else
  wrong

end
end