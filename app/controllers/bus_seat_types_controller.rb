class BusSeatTypesController < ApplicationController
  # GET /bus_seat_types
  # GET /bus_seat_types.json
  def index
    @bus_seat_types = BusSeatType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bus_seat_types }
    end
  end

  # GET /bus_seat_types/1
  # GET /bus_seat_types/1.json
  def show
    @bus_seat_type = BusSeatType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bus_seat_type }
    end
  end

  # GET /bus_seat_types/new
  # GET /bus_seat_types/new.json
  def new
    @bus_seat_type = BusSeatType.new
    @seat_types=SeatType.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bus_seat_type }
    end
  end

  # GET /bus_seat_types/1/edit
  def edit
    @bus_seat_type = BusSeatType.find(params[:id])
    @seat_types=SeatType.all
  end

  # POST /bus_seat_types
  # POST /bus_seat_types.json
  def create
    @bus_seat_type = BusSeatType.new(params[:bus_seat_type])

    respond_to do |format|
      if @bus_seat_type.save
        format.html { redirect_to @bus_seat_type, notice: 'Bus seat type was successfully created.' }
        format.json { render json: @bus_seat_type, status: :created, location: @bus_seat_type }
      else
        format.html { render action: "new" }
        format.json { render json: @bus_seat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bus_seat_types/1
  # PUT /bus_seat_types/1.json
  def update
    @bus_seat_type = BusSeatType.find(params[:id])

    respond_to do |format|
      if @bus_seat_type.update_attributes(params[:bus_seat_type])
        format.html { redirect_to @bus_seat_type, notice: 'Bus seat type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bus_seat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_seat_types/1
  # DELETE /bus_seat_types/1.json
  def destroy
    @bus_seat_type = BusSeatType.find(params[:id])
    @bus_seat_type.destroy

    respond_to do |format|
      format.html { redirect_to bus_seat_types_url }
      format.json { head :no_content }
    end
  end
end
