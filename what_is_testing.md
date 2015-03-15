#From Zero - What the hell is testing, and why do developers use it?#

Rspec is a 'testing framework', we'l come back to that in a second, but first lets discuss what is testing?

Whether you realise it or not, you've already tested your code. If your new to coding you've likely done it manually, something like:

- Written some awesome code
- Saved the file
- Ran your file to see if it works
- Made an edit, since you done goofed somewhere and it didnt work
- Repeated until your code was working
- Then ran your code again with different inputs, maybe bad inputs to see if its still working?
- Maybe then made more edits
- Ran it more times to check it still worked
- Then repeated the whole process over and over, each time you add to the code? Or have a new idea?

Already knowing 'Developers are lazy', you may have already thought to yourself. "Dang! There's gotta be a less repetitive way of doing this?"

That's where testing frameworks come in. It's like automating the boring, repetitive, none-creative part of being a developer!

With testing, you can use your developer powers to write some tests just once, then at a touch of a button run them at any time!

This means each time you add to your code, you only have to hit one button to test EVERYTHING all at once! You can test as much or as little as you like - your limited only by your imagination.

You can then, even use the free time gained from automating the testing process - to go for a nap, or watch a awesome youtube video! :) Automating boring jobs rocks.

#Heading towards hero - What is RSpec? #

R - Stands for Ruby
Spec - Stands for Specification

RSpec then, simply lets you set a specification that a ruby file should meet.

Perhaps your writing a method which should always return a string?

You can simply write in a 'spec' file, the method's name, and state that you'd expect it to return a string.

Then whenever you run a test - rspec will let you know if it doesnt do what you want it to!

Rspec spec files are written using a slight variation of the ruby language (Its what teachers will call a 'Domain Specific Language'). But all you need to know is - spec files are pretty much written in ruby.

You should also know, Rspec is one of many testing frameworks, [there are others](https://www.ruby-toolbox.com/categories/testing_frameworks). But Rspec is by far the most common framework used for testing ruby, and Rails apps.

# Why do devs test?! #

Nowadays its actually quite hard to get hired if your not testing your code. Why?

- You find bugs in your code, in seconds, with no effort! Ensuring your code is always working as you expect.

- It saves you, your company, and your program's users tonnes of time. Testing is a drag done manually.

- You become confident in refactoring and editing code - You'l know in a second if what your changing breaks your code - so you're more comfortable experimenting and changing code.

- You can sleep at night - knowing what you've coded today, does exactly what its meant to.

- It makes thinking in a disciplined way about your program/app come very naturally to you. Just the process of writing tests means you've considered what could go wrong and what your program needs to do.

- It makes testing edge cases and strange scenarios simple. Eg: If you were doing it manually, you may only test what happens if someone enters a 1,000 word password once. But with automated testing, i will test that edge case - every time.

- Testing makes you look at your own code through different eyes - whilst writing a test you often see ways to improve your own code and make it less smelly.

- The more complex and awesome your code gets the bigger the benefit of testing. You may be tempted to skip automated testing, when your just starting out and making simple tiny scripts only you will use. But can you imagine having to test 15 pages of web forms each time you update a site without automated test? Tests are a way that developers can make more complex programs/apps without having to do any more complicated/complex work.

#So how do you add this awesome super power to your toolkit?#

Simply read the next section [Install RSpec and Make Those Tests Green](./make_it_pass_morse.md), to try RSpec and automated testing out for yourself, and become a automation super hero!

