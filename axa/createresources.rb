#!/usr/bin/env ruby
require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "Create_resources" do

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

  it "test_Create_resources" do #steps
    @driver.get(@base_url + "#/management/resources") #go to demo-server resource page
    @driver.find_element(:link, "CREATE NEW RESOURCE").click # button "create new resource"
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource1"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click #======start repeat
    @driver.find_element(:name, "name").click
    @driver.find_element(:name,"name").send_keys "resource2"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource3"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource4"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource5"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource6"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource7"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource8"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource9"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create
    @driver.find_element(:link, "CREATE NEW RESOURCE").click
    @driver.find_element(:name, "name").click # resource name
    @driver.find_element(:name,"name").send_keys "resource10"
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[1]").click # checkbox internal
    @driver.find_element(:xpath, "(//input [@type='text'])[2]").click#calendar(from)
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
    @driver.find_element(:xpath, "(//input[@type='text'])[3]").click #calendar(to)
    @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
    @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
    @driver.find_element(:xpath, "(//input [@type='checkbox'])[3]").click #checkbox yes AXA permision
    @driver.find_element(:xpath , "(//button[3])").click # button create =====end repeat
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
