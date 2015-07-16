json.array!(@timed_forms) do |timed_form|
  json.extract! timed_form, :id, :begin
  json.url timed_form_url(timed_form, format: :json)
end
