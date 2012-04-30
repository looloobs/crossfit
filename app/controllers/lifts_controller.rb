class LiftsController < ApplicationController
  # GET /lifts
  # GET /lifts.json
  def index
    @lifts = Lift.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lifts }
    end
  end

  # GET /lifts/1
  # GET /lifts/1.json
  def show
    @lift = Lift.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lift }
    end
  end

  # GET /lifts/new
  # GET /lifts/new.json
  def new
    @lift = Lift.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lift }
    end
  end

  # GET /lifts/1/edit
  def edit
    @lift = Lift.find(params[:id])
  end

  # POST /lifts
  # POST /lifts.json
  def create
    @lift = Lift.new(params[:lift])

    respond_to do |format|
      if @lift.save
        format.html { redirect_to @lift, notice: 'Lift was successfully created.' }
        format.json { render json: @lift, status: :created, location: @lift }
      else
        format.html { render action: "new" }
        format.json { render json: @lift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lifts/1
  # PUT /lifts/1.json
  def update
    @lift = Lift.find(params[:id])

    respond_to do |format|
      if @lift.update_attributes(params[:lift])
        format.html { redirect_to @lift, notice: 'Lift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifts/1
  # DELETE /lifts/1.json
  def destroy
    @lift = Lift.find(params[:id])
    @lift.destroy

    respond_to do |format|
      format.html { redirect_to lifts_url }
      format.json { head :no_content }
    end
  end
end
