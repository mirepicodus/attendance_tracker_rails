AttendanceTracker::Application.routes.draw do
  match('students', {via: :get, to: 'students#list'})
  match('students', {via: :post, to: 'students#create'})
  match('students/:id', {via: [:patch, :put], to: 'students#update'})
  match('students/:id', {via: :delete, to: 'students#destroy'})

  match('course_days', {via: :get, to: 'course_days#list'})
  match('course_days', {via: :post, to: 'course_days#create'})
  match('course_days/:id', {via: [:patch, :put], to: 'course_days#edit'})
  match('course_days/:id', {via: :delete, to: 'course_days#destroy'})
end
