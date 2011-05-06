class OpportunitiesController < ApplicationController
  # GET /opportunities
  # GET /opportunities.xml
  def index
    @opportunities = Opportunity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @opportunities }
      format.json { render :json => @opportunities }
    end
  end

  # GET /opportunities/1
  # GET /opportunities/1.xml
  def show
    @opportunity = Opportunity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @opportunity }
    end
  end

  # GET /opportunities/new
  # GET /opportunities/new.xml
  def new
    @opportunity = Opportunity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @opportunity }
    end
  end

  # GET /opportunities/1/edit
  def edit
    @opportunity = Opportunity.find(params[:id])
  end

  # POST /opportunities
  # POST /opportunities.xml
  def create
    @opportunity = Opportunity.new(params[:opportunity])

    respond_to do |format|
      if @opportunity.save
        format.html { redirect_to(@opportunity, :notice => 'Opportunity was successfully created.') }
        format.xml  { render :xml => @opportunity, :status => :created, :location => @opportunity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opportunity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /opportunities/1
  # PUT /opportunities/1.xml
  def update
    @opportunity = Opportunity.find(params[:id])

    respond_to do |format|
      if @opportunity.update_attributes(params[:opportunity])
        format.html { redirect_to(@opportunity, :notice => 'Opportunity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @opportunity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /opportunities/1
  # DELETE /opportunities/1.xml
  def destroy
    @opportunity = Opportunity.find(params[:id])
    @opportunity.destroy

    respond_to do |format|
      format.html { redirect_to(opportunities_url) }
      format.xml  { head :ok }
    end
  end
end
