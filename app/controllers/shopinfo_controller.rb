class ShopinfoController < ApplicationController
  def index
    @dartsshop = Dartsshop.all
    @json = @dartsshop.to_gmaps4rails
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dartsshop}
    end
  end

end
