json.extract! blog_app, :id, :title, :name, :about, :created_at, :updated_at
json.url blog_app_url(blog_app, format: :json)
