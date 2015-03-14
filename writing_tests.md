#From Zero to Writing Your Own Tests#
So, now you have some experience developing a programme that conforms to a given set of tests, but what happens if nobody has written the tests yet? Simple, write your own! How? Ahh…

####A little pre-testing setup – Step ‐1####
If you haven’t done so already, I really recommend setting up your RSpec configuration to give you a [colourised output and documentation format](./more_info.md) as these will greatly improve readability of our test responses.

####A little preamble – Step 0####
The next step is defining _what_ you want to test. This step is completed before you get anywhere near writing code. For this example, we are going to have:
- A farm that contains:
  - animals, which:
    - make a noise
    - declare whether they produce foodstuffs
    - declare whether they themselves are food
    - list the products they can make
  - farmyard machines, which:
    - have a certain number of wheels

It would also be wise to keep track of the number of animals and machines present on the farm, you know, so the police can be called if somebody’s lifted something…though I’m really struggling to picture a dudette/dude running down the road with a cow under their arm!
