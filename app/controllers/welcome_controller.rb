class WelcomeController < ApplicationController

  def home
    @quotes = Quote.all
    render '/welcome/home'
  end
end
