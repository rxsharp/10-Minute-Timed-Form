class CreateTimedForms < ActiveRecord::Migration
  def change
    create_table :timed_forms do |t|
      t.string :begin

      t.timestamps
    end
  end
end
