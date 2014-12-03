class BusCompaniesController < ApplicationController
  # GET /bus_companies
  # GET /bus_companies.json
  def index
    @bus_companies = BusCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bus_companies }
    end
  end

  # GET /bus_companies/1
  # GET /bus_companies/1.json
  def show
    @bus_company = BusCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bus_company }
    end
  end

  # GET /bus_companies/new
  # GET /bus_companies/new.json
  def new
    @bus_company = BusCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bus_company }
    end
  end

  # GET /bus_companies/1/edit
  def edit
    @bus_company = BusCompany.find(params[:id])
  end

  # POST /bus_companies
  # POST /bus_companies.json
  def create
    @bus_company = BusCompany.new(params[:bus_company])

    respond_to do |format|
      if @bus_company.save
        format.html { redirect_to @bus_company, notice: 'Bus company was successfully created.' }
        format.json { render json: @bus_company, status: :created, location: @bus_company }
      else
        format.html { render action: "new" }
        format.json { render json: @bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bus_companies/1
  # PUT /bus_companies/1.json
  def update
    @bus_company = BusCompany.find(params[:id])

    respond_to do |format|
      if @bus_company.update_attributes(params[:bus_company])
        format.html { redirect_to @bus_company, notice: 'Bus company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_companies/1
  # DELETE /bus_companies/1.json
  def destroy
    @bus_company = BusCompany.find(params[:id])
    @bus_company.destroy

    respond_to do |format|
      format.html { redirect_to bus_companies_url }
      format.json { head :no_content }
    end
  end
end
