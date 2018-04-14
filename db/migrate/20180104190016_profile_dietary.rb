class ProfileDietary < ActiveRecord::Migration[5.1]
  def change
  	remove_column :people, :other_dietary

  	add_column :people, :other_dietary_glutenfree, :boolean
  	add_column :people, :other_dietary_lactosefree, :boolean
  	add_column :people, :other_dietary_nutfree, :boolean
  	add_column :people, :other_dietary_vegan, :boolean
  	add_column :people, :other_dietary_vegetarian, :boolean
  	add_column :people, :other_dietary_other, :boolean
  end
end
