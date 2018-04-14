class ProfileInformation < ActiveRecord::Migration[5.1]
  def change
  	add_column :people, :irc_nick, :string
  	add_column :people, :country, :string
  	add_column :people, :primary_role, :string
  	add_column :people, :other_roles, :string
    add_column :people, :other_role_artist, :boolean
    add_column :people, :other_role_community, :boolean
    add_column :people, :other_role_development, :boolean
    add_column :people, :other_role_promo, :boolean
    add_column :people, :other_role_translator, :boolean
    add_column :people, :other_role_user, :boolean
    add_column :people, :other_role_other, :boolean
  	add_column :people, :emergency_contact, :string
  	add_column :people, :dietary, :string
  	add_column :people, :other_dietary, :string
  	add_column :people, :allergy, :string
  end
end
