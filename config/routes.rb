AttendanceTracker::Application.routes.draw do
  match('students', {via: :get, to: 'students#list'})
end
