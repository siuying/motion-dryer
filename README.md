# motion-dryer

List of helpers/utilities help you to keep your RubyMotion project DRY.

## Automatic Controller Dependency

Getting tired of setting up file_dependnecies on your projects? Just 
keep your project with following structure:

```
app/
  - controllers/
    - sample_controller.rb
  - views/
    - my/
      sample_view.rb
      sample_table_view.rb
  - helpers/
    - sample_helper.rb
```

Add following to your project Rakefile:

```ruby
Motion::Project::App.setup do |app|
  app.name = 'clipbook'
  app.controllers = ['sample']
end
```

Sample controller will automatically depends on corresponding helpers and views.

## What next?

Thats all for now. if you have more idea, please contact me or send a pull request!