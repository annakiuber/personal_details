require "sinatra"

enable :sessions

get "/" do 
	erb :first_page
end

post "/name" do 
	session[:name] = params[:name]
	redirect "/name_redirect"
end

get "/name_redirect" do
	name = session[:name]
	erb :second_page, locals:{name: name}
end

post "/age" do
	session[:age] = params[:age]
	redirect "/favorite_food"
end

get "/favorite_food" do
	name = session[:name]
	erb :third_page, locals:{name:name}
end

post "/food_drink" do
	session[:food] = params[:food]
	session[:drink] = params[:drink]
	redirect "/favorite_numbers"
end

get "/favorite_numbers" do
	name = session[:name]
	erb :forth_page, locals:{name:name}
end

post "/numbers" do
	session[:num1] = params[:number_1]
	session[:num2] = params[:number_2]
	session[:num3] = params[:number_3]
	redirect "/favorite_colors"
end

get "/favorite_colors" do
	name = session[:name]
	erb :fifth_page, locals:{name:name}
end

post "/colors" do
	session[:col1] = params[:color1]
	session[:col2] = params[:color2]
	redirect "/results"
end

get "/results" do
	name = session[:name]
	age = session[:age]
	food = session[:food]
	drink = session[:drink]
	num1 = session[:number_1]
	num2 = session[:number_2]
	num3 = session[:number_3]
	col1 = session[:color1]
	col2 = params[:color2]
	erb :sixth_page, locals:{name:name, age:age, food:food, drink:drink, number_1:num1, number_2:num2, number_3:num3, color1:col1, color2:col2}
end
