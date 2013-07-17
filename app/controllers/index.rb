get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/post/new' do
  erb :new_post
end
