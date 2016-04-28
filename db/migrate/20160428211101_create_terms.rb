class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.references :plan, index: true
      t.string :semester
      t.integer :year

      t.timestamps
    end
  end
end
