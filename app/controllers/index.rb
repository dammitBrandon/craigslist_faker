get '/' do
  # Look in app/views/index.erb
  'params'
  erb :index
end

post '/' do
  args = {name: params[:post][":name"], description: params[:post][":description"], category_type: params[:post][":category_type"], price: params[:post][":price"], email: params[:post][":email"]}
  @post = Post.create(args)
  "#{@post}"
end

get '/post/new' do
  @categories = Category.all
  erb :new_post
end

get '/post/success' do
  erb :post_success
end

get '/categories/list' do
  @categories = Category.all
  erb :categories_list
end

#find a category
#get that category's posts
#send the posts array to the erb page
#  by setting it as an instance variable
#
#if @posts.empty?
#  redirect '/create_p
#else
#  erb :another
#end
#
##ON THE HTML PAGE
#<% if @posts.empty? %>
#  <h1>NO POSTS<h1>
#  <% else %>
#  iterate through posts
#  <% end %>
