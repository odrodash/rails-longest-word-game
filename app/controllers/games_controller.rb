require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << [*('A'..'Z')].sample }
  end
  def score
    @word = params[:word]
    @json = "#{Rails.root}/public#{"https://wagon-dictionary.herokuapp.com/#{@word}"}"
  end
end
