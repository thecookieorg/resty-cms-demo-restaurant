json.array!(@profiles) do |profile|
  json.extract! profile, :id, :restaurant_name, :short_intro, :address, :about, :phone_number, :email, :iphone_app, :android_app, :monday_hours, :tuesday_hours, :wednesday_hours, :thursday_hours, :friday_hours, :saturday_hours, :sunday_hours
  json.url profile_url(profile, format: :json)
end
