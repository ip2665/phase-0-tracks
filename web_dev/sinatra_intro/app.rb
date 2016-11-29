# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#write a /contact route that displays an address
get '/contact' do
  "You can contact San Francisco Office @ 633 Folsom Street (at Hawthorne) 6th Floor CA 94107"
end

# write a /great_job route that can take a person's name as query parameters
get '/great_job/' do
  if params[:name]
    "Good job, #{params[:name]} !"
  else
    "Good job !"
  end
end  

#write a route that uses route parameters to add two numbers and respond with the result.
get '/:first_number/add/:second_number' do
  result = params[:first_number].to_i + params[:second_number].to_i
  "#{params[:first_number]} + #{params[:second_number]} = #{result}"
end  