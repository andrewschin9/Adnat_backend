json.array! @shifts.each do |shift|
  json.id shift.id
  json.employee_id shift.employee_id
  json.organization_id shift.organization_id
  json.shift_date shift.shift_date
  json.start_time shift.start_time.strftime("%I:%M %p")
  json.finish_time shift.finish_time.strftime("%I:%M %p")
  json.break_length shift.break_length
end
