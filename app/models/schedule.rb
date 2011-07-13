class Schedule
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def slots_on_date(date)
    TimeSlot.on_date(date)
  end
end