# motion-dryer

List of helpers/utilities help you to keep your RubyMotion project DRY.

## Installation

```
gem install motion-dryer
```

## Usage

Add following to the Rakefile

```ruby
require 'motion-dryer'
```

## Automatic Controller Dependency

Getting tired of setting up file_dependnecies on your projects? Just 
keep your project with following structure:

```
app/
  - controllers/
    - sample_controller.rb
  - views/
    - common/
      shared_view.rb
    - sample/
      sample_view.rb
      sample_table_view.rb
  - helpers/
    - application_helper.rb
    - sample_helper.rb
```

Add following to your project Rakefile:

```ruby
Motion::Project::App.setup do |app|
  app.name = 'my_app'
  app.controllers = ['sample']
end
```

Sample controller will automatically depends on corresponding helpers and views.

## What next?

Thats all for now. if you have more idea, please contact me or send a pull request!