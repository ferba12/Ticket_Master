class SeatTypesController < ApplicationController
  # GET /seat_types
  # GET /seat_types.json
  def index
    @seat_types = SeatType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seat_types }
    end
  end

  # GET /seat_types/1
  # GET /seat_types/1.json
  def show
    @seat_type = SeatType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seat_type }
    end
  end

  # GET /seat_types/new
  # GET /seat_types/new.json
  def new
    @seat_type = SeatType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seat_type }
    end
  end

  # GET /seat_types/1/edit
  def edit
    @seat_type = SeatType.find(params[:id])
  end

  # POST /seat_types
  # POST /seat_types.json
  def create
    @seat_type = SeatType.new(params[:seat_type])

    respond_to do |format|
      if @seat_type.save
        format.html { redirect_to @seat_type, notice: 'Seat type was successfully created.' }
        format.json { render json: @seat_type, status: :created, location: @seat_type }
      else
        format.html { render action: "new" }
        format.json { render json: @seat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seat_types/1
  # PUT /seat_types/1.json
  def update
    @seat_type = SeatType.find(params[:id])

    respond_to do |format|
      if @seat_type.update_attributes(params[:seat_type])
        format.html { redirect_to @seat_type, notice: 'Seat type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_types/1
  # DELETE /seat_types/1.json
  def destroy
    @seat_type = SeatType.find(params[:id])
    @seat_type.destroy

    respond_to do |format|
      format.html { redirect_to seat_types_url }
      format.json { head :no_content }
    end
  end
end
