module SlotsHelper

  def local_link_to_time_slot(time_slot)
    link_to time_slot.header_string, "#time_slot_#{time_slot.id}", :class => time_slot.status
  end

end