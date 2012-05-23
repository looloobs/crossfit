class EndurancesController < ApplicationController
  # GET /endurances
  # GET /endurances.json
  def index
    @endurances = Endurance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endurances }
    end
  end

  # GET /endurances/1
  # GET /endurances/1.json
  def show
    @endurance = Endurance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @endurance }
    end
  end

  # GET /endurances/new
  # GET /endurances/new.json
  def new
    @endurance = Endurance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @endurance }
    end
  end

  # GET /endurances/1/edit
  def edit
    @endurance = Endurance.find(params[:id])
  end

  # POST /endurances
  # POST /endurances.json
  def create
    @endurance = Endurance.new(params[:endurance])

    respond_to do |format|
      if @endurance.save
        format.html { redirect_to @endurance, notice: 'Endurance was successfully created.' }
        format.json { render json: @endurance, status: :created, location: @endurance }
      else
        format.html { render action: "new" }
        format.json { render json: @endurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endurances/1
  # PUT /endurances/1.json
  def update
    @endurance = Endurance.find(params[:id])

    respond_to do |format|
      if @endurance.update_attributes(params[:endurance])
        format.html { redirect_to @endurance, notice: 'Endurance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endurances/1
  # DELETE /endurances/1.json
  def destroy
    @endurance = Endurance.find(params[:id])
    @endurance.destroy

    respond_to do |format|
      format.html { redirect_to endurances_url }
      format.json { head :no_content }
    end
  end
end
