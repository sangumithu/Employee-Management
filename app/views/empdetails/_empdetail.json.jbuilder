json.extract! empdetail, :id, :name, :role, :email, :phone_number, :location, :created_at, :updated_at
json.url empdetail_url(empdetail, format: :json)
