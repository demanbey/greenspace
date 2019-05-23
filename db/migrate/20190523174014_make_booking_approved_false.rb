class MakeBookingApprovedFalse < ActiveRecord::Migration[5.2]
  def change
    change_column_default :bookings, :approved, from: nil, to: false
  end
end
