json.array!(@projects) do |project|
  json.extract! project, :id, :head, :manager, :project_title, :area, :description, :representant, :sprints, :status, :resources_id, :deadline
  json.url project_url(project, format: :json)
end
