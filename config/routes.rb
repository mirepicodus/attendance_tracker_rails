AttendanceTracker::Application.routes.draw do
  match('/', {via: :get, to: 'courses#list'})
  match('/', {via: :post, to: 'courses#create'})
  match('/:id', {via: [:patch, :put], to: 'courses#edit'})
  match('/:id', {via: :delete, to: 'courses#destroy'})

  match('students', {via: :get, to: 'students#list'})
  match('students', {via: :post, to: 'students#create'})
  match('students/:id', {via: [:patch, :put], to: 'students#edit'})
  match('students/:id', {via: :delete, to: 'students#destroy'})

  match('course_days', {via: :get, to: 'course_days#list'})
  match('course_days', {via: :post, to: 'course_days#create'})
  match('course_days/:id', {via: [:patch, :put], to: 'course_days#edit'})
  match('course_days/:id', {via: :delete, to: 'course_days#destroy'})

  match('attendance_lists', {via: :get, to: 'attendance_lists#list'})
  match('attendance_lists', {via: :post, to: 'attendance_lists#create'})
  match('attendance_lists/:id', {via: [:patch, :put], to: 'attendance_lists#edit'})
  match('attendance_lists/:id', {via: :delete, to: 'attendance_lists#destroy'})
end
