class GreetingsController < ApplicationController
  def random_greeting
    @random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: @random_greeting }
  end
end
