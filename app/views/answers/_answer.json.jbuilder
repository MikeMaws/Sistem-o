json.extract! answer, :id, :subtask_id, :link, :like, :dislike, :report, :user_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
