require 'selenium-webdriver'

class SeleniumQATools

  PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form/"
  FIRST_NAME = 'firstname'
  LAST_NAME = 'lastname'
  SEX = 'sex'
  EXPERIENCE = 'exp'
  DATE = 'datepicker'
  PROFESSION = 'profession'
  TOOL = 'tool'
  CONTINENTS = 'continents'
  COMMAND = 'selenium_commands'
  PHOTO = "photo"

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_first_name(text)
    @chrome_driver.find_element(:name, FIRST_NAME).send_keys(text)
  end

  def get_first_name
    puts @chrome_driver.find_element(:name, FIRST_NAME)['value']
  end

  def input_last_name(text)
    @chrome_driver.find_element(:name, LAST_NAME).send_keys(text)
  end

  def get_last_name
    puts @chrome_driver.find_element(:name, LAST_NAME)['value']
  end

  def input_sex(code)
    @chrome_driver.find_element(:id, "#{SEX}-#{code}").click
  end

  def get_sex(code)
    puts @chrome_driver.find_element(:id, "#{SEX}-#{code}").selected?
  end

  def input_experience(years)
    @chrome_driver.find_element(:id, "#{EXPERIENCE}-#{years}").click
  end

  def get_experience(years)
    puts @chrome_driver.find_element(:id, "#{EXPERIENCE}-#{years}").selected?
  end

  def input_date(date)
    puts @chrome_driver.find_element(:id, DATE).send_keys(date)
  end

  def get_date
    puts @chrome_driver.find_element(:id, DATE)['value']
  end

  def input_profession(code)
    @chrome_driver.find_element(:id, "#{PROFESSION}-#{code}").click
  end

  def get_profession(code)
    puts @chrome_driver.find_element(:id, "#{PROFESSION}-#{code}").selected?
  end

  def get_link(link_text)
    @chrome_driver.find_element(:link_text, link_text).click
  end

  def input_tool(code)
    @chrome_driver.find_element(:id, "#{TOOL}-#{code}").click
  end

  def get_tool(code)
    puts @chrome_driver.find_element(:id, "#{TOOL}-#{code}").selected?
  end

  def select_continent(continent)
    @chrome_driver.find_element(:id, CONTINENTS).find_elements(:tag_name, 'option').each do |cont|
      if cont["value"]==continent
        cont.click
      end
    end
  end

  def get_continent
    puts @chrome_driver.find_element(:id, CONTINENTS)["value"]
  end

  def select_command(command)
    @chrome_driver.find_element(:id, COMMAND).find_elements(:tag_name, 'option').each do |comm|
      if comm["value"]==command
        comm.click
      end
    end
  end

  def get_command
    puts @chrome_driver.find_element(:id, COMMAND)["value"]
  end

  def set_photo path
    @chrome_driver.find_element(:id,PHOTO).send_keys(path)
  end
end

x = SeleniumQATools.new
x.visit_practice_form
x.input_first_name('Ben')
x.input_last_name('Robinson')
x.input_sex('0')
x.get_sex('0')
x.input_experience('3')
x.get_experience('3')
x.input_date('26/03/2018')
x.get_date
x.input_profession('1')
x.get_profession('1')
x.get_link("Selenium Automation Hybrid Framework")
x.get_link("Test File to Download")
x.input_tool('2')
x.get_tool('2')
x.select_continent('Europe')
x.get_continent
x.select_command('Wait Commands')
x.get_command
x.set_photo('/Users/tech-a12/Desktop/eng-6-coursework/SDET/webtesting_frameworks/selenium/intro/banner.png')
sleep 3
