class GamesController < ApplicationController

  def index

    computer_num = rand(3)
    if computer_num == 0
      computer_choice = 'rock'
    elsif computer_num == 1
      computer_choice = 'paper'
    elsif computer_num == 2
      computer_choice = 'scissors'
    else
      computer_choice = 'invalid choice'
    end

    def did_you_win(your_choice, computer_choice)
      if your_choice == 'rock'
        if computer_choice == 'rock'
          return 2
        elsif computer_choice == 'paper'
          return 3
        elsif computer_choice == 'scissors'
          return 1
        else
          return -1
        end
      elsif your_choice == 'paper'
        if computer_choice == 'rock'
          return 1
        elsif computer_choice == 'paper'
          return 2
        elsif computer_choice == 'scissors'
          return 3
        else
          return -1
        end
      elsif your_choice == 'scissors'
        if computer_choice == 'rock'
          return 3
        elsif computer_choice == 'paper'
          return 1
        elsif computer_choice == 'scissors'
          return 2
        else
          return -1
        end
      else
        return -1
      end
    end

    if params[:id] == nil
      @results = 'Lets Play A Game'
    else
      who_wins_id = did_you_win(params[:id], computer_choice) 
      if who_wins_id == 1
        who_wins = 'You win!'
      elsif who_wins_id == 2
        who_wins = 'Tie game!'
      elsif who_wins_id == 3
        who_wins = 'You lose!'
      else
        who_wins = 'Invalid choice!'
      end

      @results = "You chose #{ params[:id] }, and the computer chose #{ computer_choice }. " + who_wins
    end    
  end
end