json.extract! tarefa, :id, :descricao, :finalizada, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
