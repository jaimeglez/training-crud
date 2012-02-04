class RentasController < ApplicationController
  # GET /rentas
  # GET /rentas.json
  def index
    @rentas = Renta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rentas }
    end
  end

  # GET /rentas/1
  # GET /rentas/1.json
  def show
    @renta = Renta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @renta }
    end
  end

  # GET /rentas/new
  # GET /rentas/new.json
  def new
    @renta = Renta.new
  end

  # GET /rentas/1/edit
  def edit
    @renta = Renta.find(params[:id])
  end

  # POST /rentas
  # POST /rentas.json
  def create
    @renta = Renta.new(params[:renta])

    respond_to do |format|
      if @renta.save
        format.html { redirect_to :action => 'index', notice: 'Renta was successfully created.' }
        format.json { render json: @renta, status: :created, location: @renta }
      else
        format.html { render action: "new" }
        format.json { render json: @renta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rentas/1
  # PUT /rentas/1.json
  def update
    @renta = Renta.find(params[:id])

    respond_to do |format|
      if @renta.update_attributes(params[:renta])
        format.html { redirect_to @renta, notice: 'Renta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @renta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentas/1
  # DELETE /rentas/1.json
  def destroy
    @renta = Renta.find(params[:id])
    @renta.destroy

    respond_to do |format|
      format.html { redirect_to rentas_url }
      format.json { head :no_content }
    end
  end

end
