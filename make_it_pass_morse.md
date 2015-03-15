# Testing, Testing, 1, 2, 3... #
Friends or collegues keep on rumbling on how great TDD is? Want to learn more about the paradigm, but not sure how? There is no better way than getting your feet wet and diving straight into some code. By doing the following example you will get the first hand experience of adhering to test specifications and see how the whole process can accelerate code development.

#### Step 0 - Let's Set Up Everything Right ####
There is a lot of different software packages available for the implemetiation of TDD. In this tutorial we are going to stick to the popular Ruby package - RSpec. Assuming Ruby and RVM is already installed on your system all there is to do is to run the following code in the terminal:
```bash
gem install rspec
```
Terminal will inform you that six new gems have been installed and that's us ready to go. There is a lot of RSpec parameters to tweak and improve the workflow, but we left that for [later](./more_info.md). Trouble installing? Check out our [troubleshooting tips](./other_issues.md). For those running on Linux, we have some additional [setup tips](./installation_issues.md).

Once we have RSpec up and running successfully, let's set up a working environment for our small project:
```bash
mkdir morse_testing
cd morse_testing
touch morse.rb
```
The last thing we need to get going is the actual tests file. For this first example we have prepared tests for you. That means your current goal will be to write a program that can successfully pass those tests. Download the tests file [here](./code/calculator_spec.rb) and make sure to place it inside of the morse_testing directory.

Now, let's start testing!

#### Aim of the Excersise ####