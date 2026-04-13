json.extract! resume, :id, :title, :file_name, :download_count, :version, :company, :created_at, :updated_at
json.url resume_url(resume, format: :json)
