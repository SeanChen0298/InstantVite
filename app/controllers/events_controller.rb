class EventsController < ApplicationController
  before_action :set_event, only: [:join_event, :show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end
  
  def expiry
    @event.created_at + timelimit.minutes
  end
  
  def new
    @event = Event.new
  end
  
  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        @event.update(expiry: @event.created_at+@event.timelimit.minutes )
        format.html { redirect_to @event }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def join_event
    user = Jio.find(session[:jios])
    if user == @event.jio
      redirect_to @event, notice: "You have already joined this event."
    elsif user.in? @event.jios 
      redirect_to @event, notice: "You have already joined this event."
    else 
      @event.jios << user
      redirect_to @event, notice: "Thanks for joining."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :location, :grouppax, :timelimit, :jio_id)
    end
end
