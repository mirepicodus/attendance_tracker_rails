AttendanceTracker::Application.routes.draw do
  match('students', {via: :get, to: 'students#list'})
  match('students', {via: :post, to: 'students#create'})
  match('students/:id', {via: [:patch, :put], to: 'students#update'})
  match('students/:id', {via: :delete, to: 'students#destroy'})
end
