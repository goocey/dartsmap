class DartsshoptestsController < ApplicationController
  # GET /dartsshoptests
  # GET /dartsshoptests.json
  def index
    @dartsshoptests = Dartsshoptest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dartsshoptests }
    end
  end

  # GET /dartsshoptests/1
  # GET /dartsshoptests/1.json
  def show
    @dartsshoptest = Dartsshoptest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dartsshoptest }
    end
  end

  # GET /dartsshoptests/new
  # GET /dartsshoptests/new.json
  def new
    @dartsshoptest = Dartsshoptest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dartsshoptest }
    end
  end

  # GET /dartsshoptests/1/edit
  def edit
    @dartsshoptest = Dartsshoptest.find(params[:id])
  end

  # POST /dartsshoptests
  # POST /dartsshoptests.json
  def create
    @dartsshoptest = Dartsshoptest.new(params[:dartsshoptest])

    respond_to do |format|
      if @dartsshoptest.save
        format.html { redirect_to @dartsshoptest, notice: 'Dartsshoptest was successfully created.' }
        format.json { render json: @dartsshoptest, status: :created, location: @dartsshoptest }
      else
        format.html { render action: "new" }
        format.json { render json: @dartsshoptest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dartsshoptests/1
  # PUT /dartsshoptests/1.json
  def update
    @dartsshoptest = Dartsshoptest.find(params[:id])

    respond_to do |format|
      if @dartsshoptest.update_attributes(params[:dartsshoptest])
        format.html { redirect_to @dartsshoptest, notice: 'Dartsshoptest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dartsshoptest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dartsshoptests/1
  # DELETE /dartsshoptests/1.json
  def destroy
    @dartsshoptest = Dartsshoptest.find(params[:id])
    @dartsshoptest.destroy

    respond_to do |format|
      format.html { redirect_to dartsshoptests_url }
      format.json { head :no_content }
    end
  end
end
