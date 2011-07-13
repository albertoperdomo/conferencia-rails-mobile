class TimeSlot < ActiveRecord::Base
  validates_presence_of :title, :starts_at, :ends_at

  default_scope order('starts_at')
  scope :on_date, lambda { |date| where(:starts_at => date.beginning_of_day..date.end_of_day) }
  scope :pending, lambda { where(["ends_at > ?", Time.now]) }

  def status
    if self.ends_at < Time.now
      return "finished"
    elsif (self.starts_at < Time.now) && (Time.now < self.ends_at)
      return "running"
    end
  end

  def header_string
    subtitle.present? ? "#{title} - #{subtitle}" : "#{title}"
  end

end
