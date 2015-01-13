require('sinatra')
require('sinatra/reloader')
require('./lib/task')

get("/") do
  @tasks = Task.all()
  erb(:index)
end

post("/success") do
  description = params.fetch("description")
  test_task = Task.new(description)
  test_task.save()


  erb(:success)
end

get("/clear") do
  Task.clear()
  redirect "/"
end
