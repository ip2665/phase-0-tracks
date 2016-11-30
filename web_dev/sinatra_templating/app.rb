# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/home2' do
	@students = db.execute("SELECT * FROM students")
	erb :home2
end

get '/campus/new' do
	erb :new_campus
end

get '/campuses' do
	@campuses = db.execute("SELECT * FROM campuses")
	erb :campuses
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campus' do
	db.execute("INSERT INTO campuses (name, abbreviation) VALUES (?,?)", [params['name'], params['abbreviation']])
  redirect '/campuses'
end


# When we use GET instead of POST, we need to modify
# the action needs to be changed into a query route.

# add static resources
