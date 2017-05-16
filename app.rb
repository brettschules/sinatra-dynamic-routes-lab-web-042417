require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    (params[:phrase] + "\n") * (params[:number].to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a = 'word1/word2/word3/word4/word5'.split("/")
    words = a.map { |word| params[word.to_sym] }.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1.to_i]
    num2 = params[:number2.to_i]

    ((num1 + num2) * (num2 - num1))
  end
end
