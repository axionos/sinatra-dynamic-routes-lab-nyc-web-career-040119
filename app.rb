require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @multiplied = @phrase * @number
    @multiplied
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    @concatenated = @word_1 + " " + @word_2 + " " + @word_3 + " " + @word_4 + " " + @word_5 + "."
    @concatenated
  end

  get '/:operation/:number1/:number2' do

    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == 'add'
      (@number1 + @number2).to_s
    elsif params[:operation] == 'subtract'
      (@number1 - @number2).to_s
    elsif params[:operation] == 'multiply'
      (@number1 * @number2).to_s
    elsif params[:operation] == 'divide'
      (@number1 / @number2).to_s
    end
  end
end
