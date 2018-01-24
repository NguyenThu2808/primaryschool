json.extract! report, :id, :title, :description, :picture, :content, :keyword, :hot, :category_id, :created_at, :updated_at
json.url report_url(report, format: :json)
