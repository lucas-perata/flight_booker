class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :flights_id, :flight_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
