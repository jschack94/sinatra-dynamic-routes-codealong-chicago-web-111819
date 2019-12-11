require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

get "/goodbye/:name" do
  @person_name = params[:name]
  "Goodbye, #{person_name}."
end

get "/mutiple/:num1/:num2" do
  @product = params[:num1].to_i * params[:num2].to_i
  "#{product}"
end
end
