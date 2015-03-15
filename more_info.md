#Configuring Rspec output#

Rspec terminal output (STDOUT) can be configured to a users preference. As a basic functional setup the following can be useful to aid readability:

`color` Display passing tests as green and failing tests as red.

`format documentation` Allowing you to see the description of tests that have passed, rather than a series of  '.....'

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
--format documentation
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

Runs the nearest specification to a line number supplied.

`rspec spec/cows_spec.rb:10`

#Pending Specs#

Rspec gives the ability to define specs as "pending", which are specs that are awaiting update and can exist in the *_spec.rb file but will not run(see last case for exception), instead theyvwill display as pending. The great thing about this is that you are still reminded each time you run rspec that the test is still to be completed so it is not forgotten.

A pending spec will give a response from rspec like this:
>MacBook-Pro:longest rob$ rspec
>
>longest_word
>  finds longest word (PENDING: Temporarily skipped with xit)
>  checks sentence is a string
>
>Pending: (Failures listed here are expected and do not affect your suite's status)
>
>  1) longest_word finds longest word
>     # Temporarily skipped with xit
>     # ./spec/02-longest-word_spec.rb:4
>
>Finished in 0.00137 seconds (files took 0.09882 seconds to load)
>2 examples, 0 failures, 1 pending


There are various methods of setting a spec to pending that have different results including:

- Where the spec currently just includes the `it` followed by the description, the spec will be pending until a `do` and `end` are added. This can be useful for initially outlining tests and then implementing them one by one.
```
it "checks if there is an instance method bacon"
```

- Changing the `it` to an `xit` at the start of the spec declares that spec as pending
```
xit "checks if bacon is chunky" do
end
```
- Adding `pending` to a spec will disable all of the tests that come after it in that block. Hence if `pending` is added straight after the `do` then none of the tests will run. Adding `pending` part way through the tests will allow the test above it to run and only those below it to be pending.
Adding a string on the same line after `pending` returns a custom pending message.
```
it "checks that first and last name combine" do
  expect(name.first_name("Jim")).to equal "Jim"
  expect(name.last_name("Bob")).to equal "Bob"

  pending "temporarily disabled, while deciding on wording"

  expect(name.full).to equal "Hello, Good Evening, Welcome, i'm Jim Bob"
end
```

*Note: The above test is not a good example of spec structure(multiple expectations), it's more to illustrate the concept in a simple way.*

Check out the [Better Specs Guide](http://betterspecs.org/) to find out why.


#There's Method in the Matchers#

In RSpec there are many ways to compare the result of an example with what you expect. The most basic way you may have seen in Ruby to check if things match is `==`, but this doesn't work in RSpec, so `eq()` is used in its place. These methods are called "Matchers" and this section describes some of the most useful ones.

##Comparison Matchers##

`be >`, `be <`, `be >=`, `be <=` are fairly self explanatory and implement the comparison operators like in normal Ruby code.
`be_within(margin_of_error).of(expected)` is useful for comparing numerical results within a certain margin of error of the expected result.
`be_between(minimum, maximum).inclusive` checks if the result is in the given range inclusive of minimum and maximum. For an exclusive range replace `.inclusive` with `.exclusive`.
`match(/regExp/)` is used in RSpec instead of the `=~` operator for comparing results with regular expressions.

##Custom Matchers##

###Predicates###

Predicates are methods in Ruby which, by convention, end with a question mark; `?`. This is to signify that the return value will be either `true` or `false`. RSpec has a really useful shortcut for testing any of these methods even if you wrote the method yourself. It does this by creating matchers for you.

The simplest illustration of this is using the pre-existing method `empty?`. This checks if Strings or Arrays are empty and returns `true` if they are or `false` if they are not. In RSpec you can test this method with `be_empty` which would be used like this: `expect(empty_string).to be_empty`.

RSpec makes equivalent matchers  for your own methods by following the same simple pattern of adding 'be_' to the beginning and removing the question mark from the end. These are some methods and how they could be used as matchers:
Method: `paid?` Matcher: `be_piad`
Method: `full?` Matcher: `be_full`
Method: `electrically_charged?` Matcher: `be_elictrically_charged`

Similarly `has_key?(:key)` can be used in matcher form as `have_key(:key)`, which applies to all predicates starting with `has_` and taking an argument.

###Other###

You can make your own matchers from scratch, including your own default and failure messages. Look here[https://www.relishapp.com/rspec/rspec-expectations/v/2-4/docs/custom-matchers/define-matcher] for information on how to do that.

##Truthiness##

In typical ruby fashion, testing truthiness in RSpec looks like some pretty natural language. To check if something is exactly 'true' you simply state `be true` after `expect(actual).to`, or to check if it's anything truthy (anything but `nil` or `false`) you just use `be_truthy`. The same applies to checking things `falsiness` with the matchers `be_falsey` and `be false`.

##Errors##

When checking for raised errors one must pass a block into the `expect` method instead of an argument as usual. So you might say:
`expect { erroneous_method }.to raise_error`
You can pass up to two arguments into `raise_error`, an `ErrorClass`, or a message as a `String`.
