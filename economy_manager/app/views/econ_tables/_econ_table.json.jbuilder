json.extract! econ_table, :id, :acronym, imgUrl:, :name, :gross, :trade, :expenditure, :reserve, :status, :co, :iso, :ant, :state, :ind, :created_at, :updated_at
json.url econ_table_url(econ_table, format: :json)
