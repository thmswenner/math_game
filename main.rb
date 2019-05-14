require "./player.rb"
require "./question.rb"

class Game
    def initialize
        @player1 = Player.new(1)
        @player2 = Player.new(2)
        @current_player = @player1
    end

    def turn

        if (@player1.lives <= 0 || @player2.lives <= 0)
            puts "Game Over!"
        end

        question = Question.new(@turn)
        puts question.question

        print "> "
        response = $stdin.gets.chomp
        
        if (response.to_i == question.answer.to_i)
            puts "You're not stupid after all!"
        else
            puts "HAHA, You're So Stupid!!"
            @current_player.lose_life
        end

        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        @current_player == @player1 ? @current_player = @player2 : @current_player = @player1

        if (@player1.lives != 0 || @player2.lives != 0)
            self.turn
        else
            puts "Thanks for playing"
        end
    end
end


g1 = Game.new
g1.turn