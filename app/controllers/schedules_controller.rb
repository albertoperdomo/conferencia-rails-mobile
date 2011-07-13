class SchedulesController < ApplicationController
  layout "mobile"

  # GET /schedule/
  # GET /schedule.xml
  def show
    response.headers['Cache-Control'] = 'public, max-age=300'
    @schedule = Schedule.new([
     {:category => "Conference day 1", :date => Date.new(2011,07,14)},
     {:category => "Conference day 2", :date => Date.new(2011,07,15)}])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schedule }
    end
  end

end