class MovesController < ApplicationController

  def turn
    my_array = ["rock", "paper", "scissors"]
    @computerMove = my_array.sample
    @userMove = params[:move]
    @winner = nil
    play
  end

  def play
    if (@computerMove == "rock" && @userMove == "rock" ||
       @computerMove == "paper" && @userMove == "paper" ||
       @computerMove == "scissors" && @userMove == "scissors")
       @winner = "Looks like you are both losers."

    elsif (@computerMove == "rock" && @userMove == "scissors" ||
       @computerMove == "paper" && @userMove == "rock" ||
       @computerMove == "scissors" && @userMove == "paper")
       @winner = "You have lost my friend."

     elsif (@computerMove == "rock" && @userMove == "paper" ||
        @computerMove == "paper" && @userMove == "scissors" ||
        @computerMove == "scissors" && @userMove == "rock")
        @winner = "You Are the winner!!!"

    else
          @winner = "Thats not how you play the game."

    end

  end

   # here you can add methods

end
