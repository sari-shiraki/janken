  puts "じゃんけん..."
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  output = gets.to_i
  enemy_output =rand(0..2)
  
  puts "ホイ！"
  puts "------------------"
  case output
  when 0
     puts "あなた：グーを出しました"
  when 1
    puts "あなた：チョキを出しました"
  when 2
    puts "あなた：パーを出しました"
  when 3
    puts "勝負を終了します"
    exit
  else
    puts "0~3を入力してください"
    puts "--------------------"
    return true
  end
    
  case enemy_output
  when 0
    puts "相手：グーを出しました"
  when 1
    puts "相手：チョキを出しました"
  when 2
     puts "相手：パーを出しました"
  when 3
    puts "勝負を終了します"
  end
  puts "--------------------"

  if output == enemy_output
    puts "あいこで..."
    return true
  end
end

next_game = true

while next_game do 
    next_game = janken 
end

def direction
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
      
  output_direction = gets.to_i
  enemy_output_direction =rand(0..3)
      
  puts "ホイ！"
  puts "---------------------"
  case output_direction
  when 0
    puts "あなた：上"
  when 1
    puts "あなた：下"
  when 2
    puts "あなた：左"
  when 3
    puts "あなた：右"
  else
    puts "0~3を入力してください"
  end
        
  case enemy_output_direction
  when 0
    puts "相手：上"
  when 1
    puts "相手：下"
  when 2
    puts "相手：左"
  when 3
    puts "相手：右"
  else
    puts "0~3を入力してください"
  end
  puts "-----------------------"
  
  if output_direction != enemy_output_direction
    return true
  end
end

next_game = true


while next_game do
  next_game = direction
end