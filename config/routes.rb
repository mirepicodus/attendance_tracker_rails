AttendanceTracker::Application.routes.draw do
  match('students', {via: :get, to: 'students#list'})
  match('students', {via: :post, to: 'students#create'})
end
