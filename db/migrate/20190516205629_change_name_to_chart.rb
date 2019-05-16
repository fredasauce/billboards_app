class ChangeNameToChart < ActiveRecord::Migration[5.2]
  def change
    rename_column :billboards, :name, :chart
  end
end
