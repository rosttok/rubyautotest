#!/usr/bin/env ruby
require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "Create_projects" do

  before(:each) do #run a selenium-webdriver
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://52.17.174.169/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_Create_projects" do #steps
    @driver.get(@base_url + "#/management/project") #go to demo-server project page
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # select field "name"
    @driver.find_element(:name, "name").send_keys "project1" # fill field "name"
    @driver.find_element(:name, "wbs").clear # select field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs1" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # select calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # select calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click # select field "description"
    @driver.find_element(:name, "description").send_keys "description - 1" # fill field "description"
    @driver.find_element(:xpath, "//div[4]/button[2]").click # click button "create"
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project" ===============start repeat
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project2" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs2" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 2"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project3" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs3" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 3"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project4" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs4" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 4"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project5" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs5" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 5"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project6" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs6" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 6"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project7" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs7" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 7"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project8" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs8" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 8"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project9" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs9" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 9"
    @driver.find_element(:xpath, "//div[4]/button[2]").click
    @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
    @driver.find_element(:name, "name").clear # find field "name"
    @driver.find_element(:name, "name").send_keys "project10" # fill field "name"
    @driver.find_element(:name, "wbs").clear # find field "wbs"
    @driver.find_element(:name, "wbs").send_keys "wbs10" # fill field "wbs"
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # find calendar(from) select 1 January 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # find calendar(to) select 31 December 2015
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:name, "description").click
    @driver.find_element(:name, "description").send_keys "description - 10"
    @driver.find_element(:xpath, "//div[4]/button[2]").click # =================end repeat
  end

  def element_present?(how, what)
    $receiver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end

  def alert_present?()
    $receiver.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end

  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end

  def close_alert_and_get_its_text(how, what)
    alert = $receiver.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
