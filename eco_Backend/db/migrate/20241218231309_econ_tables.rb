class EconTables < ActiveRecord::Migration[7.2]
  def change
    #drop_table :econ_tables, if_exists: true
    drop_table :econ_table, if_exists: true

    create_table :econ_tables, if_not_exists: true do |t|
      t.string :acronym, limit: 3, null: false       # 3-character string (key)
      t.string :name, limit: 255                     # 255-character string
      t.string :imgUrl, limit: 255                   # Representational image URL string
      t.integer :gross                               # Integer field for gross annual
      t.integer :trade                               # Integer field for annual trade balance
      t.integer :expenditure                         # Integer field for non-trade expenditure
      t.integer :reserve                             # Integer field for reserve quantity
      t.string :status                               # Field with predefined values for adjustments
      #Thrify, Fertile, Booming, Friendly, Stable, Naval, Swift, Resistant, Industrious

      # Ideological Fields      
      t.integer :co   
      t.integer :iso    
      t.integer :ant    
      t.integer :state   
      t.integer :ind
    end
  end
end