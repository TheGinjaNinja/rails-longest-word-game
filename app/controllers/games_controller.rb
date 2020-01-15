class GamesController < ApplicationController
  def new
    @letters = [generate_letters(10)]
  end

  def score
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  private

  def generate_letters(number)
    charset = Array('A'..'Z')
    Array.new(number) { charset.sample }.join
  end
end
