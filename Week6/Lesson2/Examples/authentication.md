# User authentication from scratch in Rails

## Create a new model

To do authentication we need a controller and model to handle our users.


To create a model:

```
rails g model User username:string email:string password_digest:string
```

Now we have a class that encapsulates the attributes and methods associated with users.

## Create a new controller

Now that we're able to work with data we need a way to actually handle an HTTP request and generate views so we can manage those user models.

To generate a new users controller:

```
rails g controller Users new create edit update show
```

This will create actions and views for creating, updating, and viewing users. You can create additional actions for login and signup as well.

## Enable secure passwords

We're going to use BCrypt, a very secure password hashing algorithm. We're also going to use Rails' built-in `has_secure_password` model method to tell Rails that we're using BCrypt to hash our passwords and get some free functionality.

The first step is to update your Gemfile with the latest version of BCrypt (search for bcrypt on RubyGems.org). There's also a commented out line around line 27 of your Gemfile that you can use to get it.

Now run `bundle install`.

Now, inside of your User model, add the following line inside of the class definition. Your model will look similar to this:

```
class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: { minimum: 5 }, presence: { on: :create }
  validates_confirmation_of :password
end
```

## Actually running authentication

The following code will check that a user is logged in:

```
user = User.find_by email: params[:email]
if user && user.authenticate(params[:password])
  session[:user_id] = user.id
  redirect_to admin_root_path, :notice => "Welcome back, #{user.email}"
else
  flash[:notice] = "Invalid email or password"
  render "new"
end
```

You may want to use this in a before filter or the `create` method.

__These steps aren't everything you'll need but they're a good start.__
