class AddTables < ActiveRecord::Migration
  def change
    create_table(:cities) { |t| t.string :name }
    create_table(:hotels) { |t| t.string :name }
  end
end
