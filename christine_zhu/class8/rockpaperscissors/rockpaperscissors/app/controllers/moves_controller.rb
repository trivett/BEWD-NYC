class MovesController < ApplicationController

	def index
		
	end



	def turn
		@move = params[:move].downcase

		@computer_move = ["rock", "paper", "scissors"].sample

			
			if @move == "rock" && @computer_move == "scissors" || @move == "scissors" && @computer_move == "paper" || @move == "paper" && @computer_move == "rock" 
				
				@result = "User wins!"
			
			elsif @computer_move == "rock" && @move == "scissors" || @computer_move == "scissors" && @move == "paper" || @computer_move == "paper" && @move == "rock"
				
				@result = "Computer wins!"

			else 
				@result = "tie!"
			
			end

	end
	
end

# Vincent's refactored code:
# def turn
# 		@move = params[:move].downcase

# 		@computer_move = ["rock", "paper", "scissors"].sample

# 		@result = calculate_result(@move, @computer_move)

# 	end
	
# 	private

# 	def calculate_result(computer_move, move)

# 		if move == "rock" && computer_move == "scissors" || move == "scissors" && computer_move == "paper" || move == "paper" && computer_move == "rock" 
			
# 			result = "User wins!"
		
# 		elsif computer_move == "rock" && move == "scissors" || computer_move == "scissors" && move == "paper" || computer_move == "paper" && move == "rock"
			
# 			result = "Computer wins!"

# 		else 
# 			result = "tie!"
		
# 		end
# 		return result
