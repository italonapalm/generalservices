class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :requests, :user_id, :requester
  	rename_column :requests, :service_id, :order
  end
end
