class Oauth2callbackController < ApplicationController
  def index
    puts params[:code]
  end
  def show
  end
end
