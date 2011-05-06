class TimeGlidersController < ApplicationController
  # GET /time_gliders
  # GET /time_gliders.xml
  def index
    @time_gliders = TimeGlider.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @time_gliders }
      format.json { render :json => @time_gliders }
    end
  end

  # GET /time_gliders/1
  # GET /time_gliders/1.xml
  def show
    @time_glider = TimeGlider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @time_glider }
      format.json { render :json => @time_glider }
    end
  end

  # GET /time_gliders/new
  # GET /time_gliders/new.xml
  def new
    @time_glider = TimeGlider.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @time_glider }
    end
  end

  # GET /time_gliders/1/edit
  def edit
    @time_glider = TimeGlider.find(params[:id])
  end

  # POST /time_gliders
  # POST /time_gliders.xml
  def create
    @time_glider = TimeGlider.new(params[:time_glider])

    respond_to do |format|
      if @time_glider.save
        format.html { redirect_to(@time_glider, :notice => 'Time glider was successfully created.') }
        format.xml  { render :xml => @time_glider, :status => :created, :location => @time_glider }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @time_glider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /time_gliders/1
  # PUT /time_gliders/1.xml
  def update
    @time_glider = TimeGlider.find(params[:id])

    respond_to do |format|
      if @time_glider.update_attributes(params[:time_glider])
        format.html { redirect_to(@time_glider, :notice => 'Time glider was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @time_glider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /time_gliders/1
  # DELETE /time_gliders/1.xml
  def destroy
    @time_glider = TimeGlider.find(params[:id])
    @time_glider.destroy

    respond_to do |format|
      format.html { redirect_to(time_gliders_url) }
      format.xml  { head :ok }
    end
  end
end
