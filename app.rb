require 'sinatra'

tasks = []

get '/' do
  "<h1>📋 To-Do List</h1>" +
  "<ul>" +
  tasks.map { |t| "<li>#{t}</li>" }.join +
  "</ul>" +
  "<form action='/add' method='post'>
    <input type='text' name='task' placeholder='New task'>
    <button type='submit'>Add Task</button>
  </form>"
end

post '/add' do
  tasks << params[:task]
  redirect '/'
end
