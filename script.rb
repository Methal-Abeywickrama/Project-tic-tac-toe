require_relative "win_test.rb"
class GameBoard
	include WinTest
	attr_accessor :already_won, :spots
	protected
	def won
		puts "Hooray, you won"
	end
	
	public
	def validation(input)
		true_or_false = self.spots.value?(input)
		true_or_false
	end
	
	def initialize
		@spots = {spot1: 1, spot2: 2, spot3: 3, spot4: 4, spot5: 5, spot6: 6,spot7: 7, spot8: 8, spot9: 9}
		@already_won = false
	end
	
	def display
		puts "\n"
		p "#{@spots[:spot1]} || #{@spots[:spot2]} || #{@spots[:spot3]}"
		p "--<>---<>--"
		p "#{@spots[:spot4]} || #{@spots[:spot5]} || #{@spots[:spot6]}"
		p "--<>---<>--"
		p "#{@spots[:spot7]} || #{@spots[:spot8]} || #{@spots[:spot9]}"
		puts "\n"
	end
	
	def player1_plays(user_input)
		case user_input
		when 1
			@spots[:spot1] = "O"
		when 2
			@spots[:spot2] = "O"
		when 3
			@spots[:spot3] = "O"
		when 4
			@spots[:spot4] = "O"
		when 5
			@spots[:spot5] = "O"
		when 6
			@spots[:spot6] = "O"
		when 7
			@spots[:spot7] = "O"
		when 8
			@spots[:spot8] = "O"
		when 9
			@spots[:spot9] = "O"
		end
		
		self.display
		
		if check_for_win("O")
			puts "Hooray you won"
			self.already_won = true
			return
		end
		
	end
	
	def player2_plays(user_input)
		case user_input
		when 1
			@spots[:spot1] = "X"
		when 2
			@spots[:spot2] = "X"
		when 3
			@spots[:spot3] = "X"
		when 4
			@spots[:spot4] = "X"
		when 5
			@spots[:spot5] = "X"
		when 6
			@spots[:spot6] = "X"
		when 7
			@spots[:spot7] = "X"
		when 8
			@spots[:spot8] = "X"
		when 9
			@spots[:spot9] = "X"
		end
		
		self.display
		
		if check_for_win("X")
			puts "Hooray you won"
			self.already_won = true
			return
		end
	end
end

game_board = GameBoard.new
game_board.display

until game_board.already_won
	can_continue1 = false
	can_continue2 = false
	puts "Player 1..."
	puts "Enter one of the numbers displayed on the board."
	puts "\n"
	until can_continue1 do
		player1_input = gets.chomp.to_i
		can_continue1 = game_board.validation(player1_input)
	end
	game_board.player1_plays(player1_input)
	next if game_board.already_won
	puts "Player 2..."
	puts "Enter one of the numbers displayed on the board."
	puts "\n"
	until can_continue2 do
		player2_input = gets.chomp.to_i
		can_continue2 = game_board.validation(player2_input)
	end
	game_board.player2_plays(player2_input)
end
