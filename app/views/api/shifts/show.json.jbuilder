json.id @shift.id
json.employee_id @shift.employee_id
json.employee_name @shift.employee_name
json.organization_id @shift.organization_id
json.shift_date @shift.shift_date
json.start_time @shift.start_time.strftime("%I:%M %p")
json.finish_time @shift.finish_time.strftime("%I:%M %p")
json.break_length @shift.break_length
json.length @shift.length
json.wage @shift.wage


# strftime(%I:%M %p)