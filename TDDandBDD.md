#TDD & BDD?#

*This is a work in progress, feel free to add and ammend, my intention is to create a review based on the vast range of discussion on the topic, which will most likely be during the weekend of wk1.*

TDD (*Test-Driven-Development*) in its simplest form is the process of:

 - Writing Tests to define features
 - Running the test to see what fails
 - Writing the minimal amount of code to specifically pass the test
 - Refactoring the code
 - Repeating the process.

BDD (*Behaviour-Driven-Development*) is an extension on TDD and is commonly phrased as TDD 'done well'. The sentiments to this being that BDD focusses the process on the business objectives and therefore guides the structuring of the tests towards ensuring the delivery of a product to the requirements of the product owner, rather than just producing tests for code intricacies. BDD embraces a language change to move away from talking about testing to verbosely describing the interactions and entities extracted by a user story process. One of the main benefits of BDD in a TDD process is that it removes the question 'What do we test?', 'Where do we start?', 'What next?'. The development team can 'simply' focus on devlivering the "next most important feature, that delivers value to the users, that the product does not do" defined by the analysed user stories and the emergent Domain Model of entities and interactions that would have arisen from this.