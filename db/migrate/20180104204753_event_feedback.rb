class EventFeedback < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :feedback_wanted, :boolean
  end
end
