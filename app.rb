require "sinatra"

get "/" do 
	erb :first_page
end

post "/name" do 
	name = params[:name]
	redirect "/name_redirect?name="+ name
end



get "/name_redirect" do
	f_name = params[:name]
	erb :second_page, locals:{f_name:f_name}


end
post "/age" do
	f_name = params[:f_name]
	age = params[:age]
	redirect "/favorite_food?f_name="+ f_name + "&age=" + age
end

get "/favorite_food" do
	f_name = params[:f_name]
	age = params[:age]
	erb :third_page, locals:{f_name:f_name, age:age}
end
post "/food_drink" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	redirect "/favorite_numbers?f_name="+ f_name + "&age=" + age + "&food=" + food + "&drink=" + drink
end
get "/favorite_numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	erb :forth_page, locals:{f_name:f_name, age:age, food:food, drink:drink}
end
post "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	redirect "/favorite_colors?f_name="+ f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&num1=" + num1 + "&num2=" + num2 + "&num3=" + num3
end
get "/favorite_colors" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	erb :fifth_page, locals:{f_name:f_name, age:age, food:food, drink:drink, number_1:num1, number_2:num2, number_3:num3}
end
post "/colors" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	col1 = params[:color1]
	col2 = params[:color2]
	redirect "/results?f_name="+ f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&num1=" + num1 + "&num2=" + num2 + "&num3=" + num3 + "&col1=" + col1 + "&col2=" + col2
end

get "/results" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	col1 = params[:color1]
	col2 = params[:color2]
	erb :sixth_page, locals:{f_name:f_name, age:age, food:food, drink:drink, number_1:num1, number_2:num2, number_3:num3, color1:col1, color2:col2}
end
