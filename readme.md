# REST & MVC
## Learning Objectives
- What is a route?
- What is REST?
- What is MVC?
- What are the HTTP request methods, and how do they correspond with the CRUD actions?
- What is a templating engine?

## REST
Stands for REpresentational State Transfer. It is a convention for making HTTP requests.
### RESTful Routes
Route = **Method + Path**
- `GET /articles` --> retrieve all articles
- `POST /articles` --> create a new article
- `GET /articles/:id` --> retrieve one article
- `PUT /articles/:id` --> update one article
- `DELETE /articles/:id` --> delete one article
### What are the routes for an article's comments?
- `GET /articles/:id/comments` --> retrieve all comments on one article
- etc.
- What about `GET '/'`?


## MVC
Model, View, Controller

### Model
Represents our data as an object. Will cover in more detail when we get into ORMs like ActiveRecord.

### View
Displays information to the user based on information retrieved from the model.

### Controller
Interacts with the model, by retrieving data or updating it

### I do: Index
```ruby
get "/" do
  erb :index
end
```

### We do: /zip, /:name
```ruby
get "/zip" do
  erb :zip
end

get "/:name" do
  @name = params[:name]
  erb :hello
end
```

```html
<!-- hello.erb -->
<h1>Hello, <%= @name %></h1>

```


### You do: post
```ruby
post "/" do
  zipcode = params[:zipcode]
  "Your zip code is: #{zipcode}. <a href='/'>Home</a>"
end
```


```html
<!-- zip.erb -->
<form method="post" action="/">
  <input type="text" name="zipcode" placeholder="zip code">
  <input type="submit">
</form>
```
