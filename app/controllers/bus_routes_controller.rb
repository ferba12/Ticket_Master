class BusRoutesController < ApplicationController
  # GET /bus_routes
  # GET /bus_routes.json
  def index
    @bus_routes = BusRoute.all
    @break_points=BreakPoint.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bus_routes }
    end
  end

  # GET /bus_routes/1
  # GET /bus_routes/1.json
  def show
    @bus_route = BusRoute.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bus_route }
    end
  end

  # GET /bus_routes/new
  # GET /bus_routes/new.json
  def new
    @bus_route = BusRoute.new
    @break_points=BreakPoint.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bus_route }
    end
  end

  # GET /bus_routes/1/edit
  def edit
    @bus_route = BusRoute.find(params[:id])
  end

  # POST /bus_routes
  # POST /bus_routes.json
  def create
    @bus_route = BusRoute.new(params[:bus_route])

    respond_to do |format|
      if @bus_route.save
        format.html { redirect_to @bus_route, notice: 'Bus route was successfully created.' }
        format.json { render json: @bus_route, status: :created, location: @bus_route }
      else
        format.html { render action: "new" }
        format.json { render json: @bus_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bus_routes/1
  # PUT /bus_routes/1.json
  def update
    @bus_route = BusRoute.find(params[:id])
 
    respond_to do |format|
      if @bus_route.update_attributes(params[:bus_route])
        format.html { redirect_to @bus_route, notice: 'Bus route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bus_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_routes/1
  # DELETE /bus_routes/1.json
  def destroy
    @bus_route = BusRoute.find(params[:id])
    @bus_route.destroy

    respond_to do |format|
      format.html { redirect_to bus_routes_url }
      format.json { head :no_content }
    end
  end
end
