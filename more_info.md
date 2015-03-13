#Configuring Rspec output#

Rspec terminal output (STDOUT) can be configured to a users preference. As a basic functional setup the following can be useful to aid readability:

Display passing tests as green and failing tests as red.
    `color`

Allowing you to see the description of tests that have passed, rather than a series of  '.....'
    `format documentation`

*These configurations can be set in various locations, including:*

 - They can be set each time you run a test in the terminal

    `rspec --color --format documentation`

 - By using a spec/spec_helper.rb file and inserting the following code into it. The *_spec.rb file must require the helper.
```
RSpec.configure do |config|
config.color = true
config.add_formatter("documentation")
end
```
 - In a project level .rspec file. By creating a .rspec file in your project root directory with the following inside or for all rspec operation on your computer (global) you can place the .rspec file in your root directory:
 ```
--color
-- format documentation
```

Further configurations can be explored by running this in the terminal
    `rspec -- help`

#Running specifications#
Running rspec from the terminal has been explained in the introductions, it is possible to focus rspec to run only the tests you wish all the way down to a line number level, by using a pointer after the command.


Run all of the specifications in the current directory hierarchy .
    `rspec`
    
Run tests in a specific directory
    `rspec spec/models/`
    
Runs specifications in a specific spec file
    `rspec spec/cows_spec.rb`

    `rspec spec/cows_spec.rb:10`

Runs the nearest specification to a line number supplied.
    `rspec spec/cows_spec.rb:10`
