class AddReportToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_reference :admins, :report, foreign_key: true
  end
end
