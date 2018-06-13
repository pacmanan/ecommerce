# ecommerce


Requirements:
- Rubymine
- ruby version 2.4.0
- Cucumber (https://docs.cucumber.io/installation/)

Summary:
This repo contains frontend automation tests for the website 'http://automationpractice.com/'. These test are written using a framwork created using BDD, watir and ruby.

Test Cases:
Scenarios covered are:

- Logging in using correct credentials.
- Logging in using incorrect credentials.
- Searching for a product.
- Searching for a product that is not sold on the site.
- Navigating to a product descritpion page.


How to Run Tests:

- Open the project in Rubymine and wait for the automatic indexation to completed by Rubymine.
- Once indexation has been completed, in the terminal window within Rubymine (located at the bottem left) run the command 'bundle install'. This will install the gems if they werent installed with the indexation. If this happens correctly you will see a 'gemlock' file at the root of the project.
- Once that is completed, open any of the .feature file and right click on any Scenario you would like to run by right-clicking on the "scenario outline" line and clicking Run tests.
- You will now see the browser fire up with your test running.
