
puts "じゃんけん・・・"

def janken

puts "0(グー)1(チョキ)2(パー)3(戦わない)"
my_hand = gets.to_i
enemy_hand =rand(0..2)
jankens = ["グー", "チョキ", "パー"]
puts "ホイ！"

p "------------------------------------------------------"

puts "あなた：#{jankens[my_hand]}を出しました"
puts "相手: #{jankens[enemy_hand]}を出しました"

    if my_hand == enemy_hand
        puts "あいこで・・・"
        return true
        
    elsif my_hand == 0 && enemy_hand == 1 || my_hand == 1 && enemy_hand == 2 || my_hand == 2 && enemy_hand == 0
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        my_turn = gets.to_i
        enemy_turn = rand(0..3)
        choises = ["上", "下", "左", "右"]
        puts "ホイ！"
        p "------------------------------------------------------"
        puts "あなた:#{choises[my_turn]}"
        puts "相手: #{choises[enemy_turn]}"
            if my_turn == enemy_turn
                puts "あなたの勝ちです"
                return false
            else
                puts "じゃんけん・・・"
                return true
            end
    else 
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        my_turn = gets.to_i
        enemy_turn = rand(0..3)
        choises = ["上", "下", "左", "右"]
        puts "ホイ！"
        p "------------------------------------------------------"
        puts "あなた:#{choises[my_turn]}"
        puts "相手: #{choises[enemy_turn]}"
            if my_turn == enemy_turn
                puts "あなたの負けです"
                return false
            else
                puts "じゃんけん・・・"
                return true
            end
        return false
    end
end

next_game = true

while next_game do 
    next_game = janken
end