get '/' do
  # Look in app/views/index.erb
  'params'
  erb :index
end

post '/' do
  args = {name: params[:post][":name"], description: params[:post][":description"], category_type: params[:post][":category_type"], price: params[:post][":price"]}
  @post = Post.create(args)
  "#{@post}"
end

get '/post/new' do
  erb :new_post
end

get '/post/success' do
  erb :post_success
end

get '/categories/list' do
  erb :categories_list
end
