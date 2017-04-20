json.extract! project, :id, :p_id, :p_name, :p_desc, :p_creator, :engineer, :status, :accepted, :complete, :created_at, :updated_at
json.url project_url(project, format: :json)
