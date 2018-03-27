# Sparta Selenium and RSPEC
A repository containing three programs using selenium. The first and second tests selenium but uses puts and console outputs to record results. The third uses rspec unit testing to monitor results

## Installation
Clone this repository into the desired directory using the command: `git@github.com:bjorobinson/sparta-selenium-and-rspec.git`
See the individual app sections for details of how to run each.


## File Structure
Given that this repository serves to house three apps, below is the file expected file structure. From here, I will separate the apps based on their folder names, and describe them seperately.

* root
  * selenium
    * selenium_class_intro
    * selenium_intro
  * selenium_rspec
    * spec
      * demoqa_registration_spec
      * spec_helper
    * .rspec
    * selenium_demoqa_registration
  * banner
  * README

### Selenium
This directory contains two basic selenium apps, as listed above. Both served as a basic introduction to the selenium framework, and implement basic actions, which were manually tested either by observing them in the generated window or observing the console output.

Selenium_Class_Intro implements the following actions on `http://toolsqa.com/automation-practice-form/` and outputs them to the console in this order:
* set/get first name
* set/get last name
* set/get sex
* set/get years of experience
* set/get date
* set/get profession
* set/get continent
* set/get commands
* set profile picture

In order to run selenium_intro, navigate to the folder:
`cd selenium`, and run the command `ruby selenium_intro.rb`

In order to run selenium_class_intro, navigate to the folder: `cd selenium`, and run the command `ruby selenium_class_intro.rb`

### Selenium_Rspec
This directory contains a single app, selenium_demoqa_registration, that uses rspec to implement unit tests on selenium filling in `http://demoqa.com/registration/`. It implements the following tests:

* testing the demoqa registration page
  * positive paths for the registration form and register
    * should land on the registration for page
    * should accept a first name
    * should accept a last name
    * should accept a marital status selection of Single, Married, or Divorced
    * should accept a hobby status selection of Dance, Reading, or Cricket
    * should have a country default of Afghanistan
    * should accept a new country value
    * accept a new dob
    * should accept a valid phone number
    * should accept a username
    * should accept a about yourself text
    * should accept a password
    * should accept a password confirmation
    * should accept a profile picture
    * should accept an email address
    * should submit the form

In order to run selenium_demoqa_registration, navigate to the folder: `selenium_rspec` and run the command `rspec`
