class GamesController < ApplicationController
  def new
    @letters = generate_letters(10)
  end

  def score
    # check if the letters typed in the form are not in the grid
    answer = params[:word]
    answer.chars

    letters = params[:letters]
    saved_letters = letters.split

    # TODO: You are stuck here, trying to test whether the if statement is working!

    result = answer & saved_letters

    if result.empty?
      @score = "fail"
    else

    # if saved_letters.any? { answer }
    #   @score = "freedoooom!"
    # else
    #   @score = "Computer says no..."
    # end

    # TODO: check if the word is an English word
  end

  private

  def generate_letters(number)
    charset = Array('A'..'Z')
    Array.new(number) { charset.sample }
  end
end
