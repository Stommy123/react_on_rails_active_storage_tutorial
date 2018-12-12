class CreateThingWithReactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :thing_with_react_forms do |t|
      t.string :name

      t.timestamps
    end
  end
end
