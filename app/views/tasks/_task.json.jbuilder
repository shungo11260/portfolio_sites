json.extract! task, :id, :title, :detail, :created_at, :updated_at, :list_id
json.url task_url(task, format: :json)
