json.extract! task, :id, :status, :nome, :descricao, :created_at, :updated_at
json.url task_url(task, format: :json)
