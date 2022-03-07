require 

class MyExamplesController < ApplicationController
  def fortune_method
    messages = ["You'll have a lucky day", "Try again later", "Not looking so great for you..."]

    render json: messages.sample
    #render json: {message: messages.sample}
  end

  def random_numbers
    numbers = []
    6.times do
      n = rand(1..60)
      numbers << n 
    end
    render json: numbers
  end
  
  def number_of_visits
    
    visits = 1
    visits += 1 #this does not work!

    render json: {visitors: visits}
    #see solutions on github 
  
    # create  variable in another folder and require that
    # one render statement
  end
end






