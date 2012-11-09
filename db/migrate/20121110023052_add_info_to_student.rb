class AddInfoToStudent < ActiveRecord::Migration
  def change
    add_column :students, :info, :text
  end
end
