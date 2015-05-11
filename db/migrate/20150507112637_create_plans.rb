class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.timestamps null: false
      t.string :created_by
      t.string :updated_by
      t.boolean :active_flg
      t.string :plan_name
      t.text :plan_desc
      t.decimal :plan_price
      t.datetime :plan_start_date
      t.datetime :plan_end_date
    end
  end
end
