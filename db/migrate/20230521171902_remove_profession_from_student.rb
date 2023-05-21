class RemoveProfessionFromStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :profession
  end
end
