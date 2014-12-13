class BreakPointsController < ApplicationController
  # GET /break_points
  # GET /break_points.json
  def index
    @break_points = BreakPoint.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @break_points }
    end
  end

  # GET /break_points/1
  # GET /break_points/1.json
  def show
    @break_point = BreakPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @break_point }
    end
  end

  # GET /break_points/new
  # GET /break_points/new.json
  def new
    @break_point = BreakPoint.new
    @provinces=Province.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @break_point }
    end
  end

  # GET /break_points/1/edit
  def edit
    @break_point = BreakPoint.find(params[:id])
    @provinces=Province.all
    #render text: @break_point.province.name
  end

  # POST /break_points
  # POST /break_points.json
  def create
    @break_point = BreakPoint.new(params[:break_point])
    @provinces=Province.all
    respond_to do |format|
      if @break_point.save
        format.html { redirect_to @break_point, notice: 'Break point was successfully created.' }
        format.json { render json: @break_point, status: :created, location: @break_point }
      else
        format.html { render action: "new" }
        format.json { render json: @break_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /break_points/1
  # PUT /break_points/1.json
  def update
      
      @break_point = BreakPoint.find(params[:id])      
    respond_to do |format|
      if @break_point.update_attributes(params[:break_point])
        format.html { redirect_to @break_point, notice: 'Break point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @break_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /break_points/1
  # DELETE /break_points/1.json
  def destroy
    @break_point = BreakPoint.find(params[:id])
    @break_point.destroy

    respond_to do |format|
      format.html { redirect_to break_points_url }
      format.json { head :no_content }
    end
  end
end
