class GamesController < ApplicationController

  def play_rock

    @computer_move = ["rock", "paper", "scissors"].sample
    @your_move = "rock"

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper

    @computer_move = ["rock", "paper", "scissors"].sample
    @your_move = "paper"

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tie"
    else
      @outcome = "lost"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors

    @computer_move = ["rock", "paper", "scissors"].sample
    @your_move = "scissors"

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tie"
    end

    render("games/play_scissors.html.erb")
  end

end
