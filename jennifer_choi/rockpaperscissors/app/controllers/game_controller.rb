class GameController < ApplicationController
	def index
	end

	def move
		@robot_move = ["rock", "paper", "scissors"].sample
		@player_move = params[:move]

		if 
			@robot_move == "rock" && @player_move == "paper" ||
			@robot_move == "paper" && @player_move == "scissors" ||
			@robot_move == "scissors" && @player_move == "rock"
			@result = "You win!"
		elsif
			@robot_move == "paper" && @player_move =="rock" ||
			@robot_move == "scissors" && @player_move == "paper" ||
			@robot_move == "rock" && @player_move = "scissors"
			@result = "You lose..."
		elsif
			@robot_move && @player_move == "rock" ||
			@robot_move && @player_move == "paper" ||
			@robot_move && @player_move == "scissors"
			@result = "It's a tie"
		else
			@result = "Please enter rock/paper/scissors to play"
		end
	end
end