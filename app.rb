require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  get '/goodbye' do
    "Goodbye World!"
  end
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  get "/:operation/:x/:y" do
    @operation = params[:operation].downcase
    if @operation == "multiply"
    @x = params[:x].to_i
    @y = params[:y].to_i
    @z = @x*@y
    "#{@z}!"
    elsif @operation == "square"
    @x = params[:x].to_i
    @z = @x**2
    "#{@z}!"
    end
  end
  get "/square/:x" do
  end

  # Code your final two routes here:

end