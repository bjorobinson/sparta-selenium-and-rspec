require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      if @driver.first_name_field_displayed
        @driver.set_first_name_field('Ben')
        expect(@driver.get_first_name_field_value).to eq 'Ben'
      end
    end

    it 'should accept a last name' do
      if @driver.last_name_field_displayed
        @driver.set_last_name_field('Robinson')
        expect(@driver.get_last_name_field_value).to eq 'Robinson'
      end
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option('single')
      expect(@driver.get_marital_status_field_value).to eq 'single'
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option('Dance')
      @driver.select_hobby_option('Reading')
      @driver.select_hobby_option('Cricket')
      expect(@driver.get_hobby_option_field_values).to match_array(['dance','reading','cricket '])
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Greece')
      expect(@driver.get_selected_country).to eq 'Greece'
    end

    it 'accept a new dob' do
      @driver.dob_month_list_select("7")
      @driver.dob_day_list_select("6")
      @driver.dob_year_list_select("1996")
      expect(@driver.get_dob_values).to match_array(["7","6","1996"])
    end

    it 'should accept a valid phone number' do
      number = "03409722601"
      @driver.set_phone_number_field(number)
      expect(@driver.get_phone_number_field_value).to eq number
    end

    it 'should accept a username' do
      username = "BRobinson"
      @driver.set_user_name_field(username)
      expect(@driver.get_user_name_field_value).to eq username
    end

    it 'should accept a about yourself text' do
      text = "I'm definatley a human writing this, not a robot."
      @driver.set_about_yourself_field(text)
      expect(@driver.get_about_yourself_value).to eq text
    end

    it 'should accept a password' do
      password = "password"
      @driver.set_password_field(password)
      expect(@driver.get_password_value).to eq password
    end

    it 'should accept a password confirmation' do
      password = "password"
      @driver.set_confirmation_password_field(password)
      expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
    end

    it 'should accept a profile picture' do
      name = "banner.png"
      path = "/Users/tech-a12/Desktop/eng-6-coursework/SDET/webtesting_frameworks/selenium/intro/#{name}"
      @driver.set_profile_field(path)
      expect(@driver.get_profile_field_value).to eq "C:\\fakepath\\#{name}"
    end

    it 'should accept an email address' do
      email = "test@mail.com"
      @driver.set_email_field(email)
      expect(@driver.get_email_field_value).to eq email
    end

    it 'should submit the form' do
      @driver.click_submit
    end
  end

end
