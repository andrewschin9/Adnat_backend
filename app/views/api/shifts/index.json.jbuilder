json.array! @shifts.each do |shift|
  json.id shift.id
  json.employee_id shift.employee_id
  json.shift_date shift.shift_date
  json.start_time shift.start_time
  json.finish_time shift.finish_time
  json.break_length shift.break_length
end
