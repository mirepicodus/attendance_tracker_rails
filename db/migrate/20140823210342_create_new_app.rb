class CreateNewApp < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
    end
    create_table :attendance_lists do |t|
      t.belongs_to :course
      t.date :date
      t.boolean :attend
      t.boolean :partial
    end
    create_table :students do |t|
      t.belongs_to :attendance_list
      t.string :name
    end
  end
end
