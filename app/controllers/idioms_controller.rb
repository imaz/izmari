class IdiomsController < ApplicationController
  # GET /idioms
  # GET /idioms.json
  def index
    @idioms = Idiom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @idioms }
    end
  end

  # GET /idioms/1
  # GET /idioms/1.json
  def show
    @idiom = Idiom.find(params[:id])
    @essays = Essay.where(idiom_id: params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idiom }
    end
  end

  # GET /idioms/new
  # GET /idioms/new.json
  def new
    @idiom = Idiom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @idiom }
    end
  end

  # GET /idioms/1/edit
  def edit
    @idiom = Idiom.find(params[:id])
  end

  # POST /idioms
  # POST /idioms.json
  def create
    @idiom = Idiom.new(params[:idiom])

    respond_to do |format|
      if @idiom.save
        format.html { redirect_to @idiom, notice: 'Idiom was successfully created.' }
        format.json { render json: @idiom, status: :created, location: @idiom }
      else
        format.html { render action: "new" }
        format.json { render json: @idiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /idioms/1
  # PUT /idioms/1.json
  def update
    @idiom = Idiom.find(params[:id])

    respond_to do |format|
      if @idiom.update_attributes(params[:idiom])
        format.html { redirect_to @idiom, notice: 'Idiom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idioms/1
  # DELETE /idioms/1.json
  def destroy
    @idiom = Idiom.find(params[:id])
    @idiom.destroy

    respond_to do |format|
      format.html { redirect_to idioms_url }
      format.json { head :no_content }
    end
  end
end
