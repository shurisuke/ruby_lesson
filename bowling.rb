class Bowling
    attr_accessor :name
    attr_accessor :score
    attr_accessor :pin

    #def initialize(name:, score:)
        #self.name = name
        #self.score = score
   # end 

    def name_ask
        puts "ニックネームを入力してください"
        name = gets.chomp
        puts "#{name}さん ですね？ (はいorいいえ)"
        name_correct = gets.chomp
    
        if name_correct != "はい"
            return name_ask
        else
            puts "#{name}さん、それではゲームを開始します！"
        end
    end

    def bowling_game
        index = 0
        pin = 10
        total_pin = 0
        puts "1回目"

    end

    def test_game(index,pin,score)
        if index <= 9
            pin = 10 - Random.rand(1..10)
            puts "#{pin}本残りました"
            index += 1
            score += (10 - pin)
            puts "#{index}回目のスコア: #{score}"
            puts "-------------------"
            return test_game(index,pin,score)
        else
            puts "ゲーム終了です"
            puts "スコアを確認してください"
        end
    end

    def score_info(name,score)
        puts "-------------------------"
        puts "| #{name} さんのスコア : #{score} |"
        puts "-------------------------"
    end

end





    #def score_info(name,score)
        #puts "-------------------------"
        #puts "| #{name} さんのスコア : #{score} |"
        #puts "-------------------------"
    #end