class AvailabilitiesBelongToDay < ActiveRecord::Migration
  def up

    # convert availability times
    add_column :availabilities, :start_date, :datetime
    add_column :availabilities, :end_date, :datetime
    # availability belongs_to Day
    add_column :availabilities, :day_id, :integer
    Availability.reset_column_information

    Availability.all.each do |a|
      Time.zone = a.conference.timezone
      a.start_date = a.day.to_datetime.change(:hour=>a.start_time.hour, :minute=>a.start_time.min)
      a.end_date = a.day.to_datetime.change(:hour=>a.end_time.hour, :minute=>a.end_time.min)
      a.day_id = a.conference.days.select { |d| a.day.strftime("%Y-%m-%d") == d.start_date.strftime("%Y-%m-%d") }.first.id

      if a.start_date >= a.end_date
        # not available at all
        next
      end
      a.save!
    end

    remove_column :availabilities, :start_time
    remove_column :availabilities, :end_time
    remove_column :availabilities, :day

  end

  def down
  end
end
