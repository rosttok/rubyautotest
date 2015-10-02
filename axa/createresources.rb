#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
@time = Time.new.nsec
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://localhost:5000"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/resources") #go to demo-server resource page

sleep 2
@driver.find_element(:name, "CreateButton").click # button "create new resource"
@driver.find_element(:name, "name").clear # resource name
@driver.find_element(:name, "name").send_keys "admin"
@driver.find_element(:name, "staffingGroup").clear
@driver.find_element(:name, "staffingGroup").send_keys "Others"
@driver.find_element(:xpath,"(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'][1])").click
@driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
@driver.find_element(:id, "dropdownScope0").click # select RESOURCE TYPE
@driver.find_element(:id, "internal0").click # chouse internal
@driver.find_element(:id, "dropdownPermissions0").click # select WORKING LOCATION
@driver.find_element(:id, "axaOffices0").click # chouse axaOffices
@driver.find_element(:name, "startDate0").click # chouse startDate
@driver.find_element(:xpath, "(//button[@type='button'])[2]").click #month
@driver.find_element(:xpath, "(//button[@type='button'])[4]").click #January
@driver.find_element(:xpath, "(//button[@type='button'])[7]").click #1-1-2015
@driver.find_element(:name, "endDate0").click # chouse endDate
@driver.find_element(:xpath, "(//button[@type='button'])[47]").click #month
@driver.find_element(:xpath, "(//button[@type='button'])[60]").click #December
@driver.find_element(:xpath, "(//button[@type='button'])[80]").click #31-12-2015
@driver.find_element(:name, "buttonSave").click #click save
sleep 2

def create_resources
  sleep 2
  @driver.find_element(:name, "CreateButton").click # button "create new resource"
  @driver.find_element(:name, "name").clear # resource name
  @driver.find_element(:name, "name").send_keys "resource#@min#@time"
  @driver.find_element(:name, "staffingGroup").clear
  @driver.find_element(:name, "staffingGroup").send_keys "Others"
  @driver.find_element(:xpath,"(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'][1])").click
  @driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
  @driver.find_element(:id, "dropdownScope0").click # select RESOURCE TYPE
  @driver.find_element(:id, "internal0").click # chouse internal
  @driver.find_element(:id, "dropdownPermissions0").click # select WORKING LOCATION
  @driver.find_element(:id, "axaOffices0").click # chouse axaOffices
  @driver.find_element(:name, "startDate0").click # chouse startDate
  @driver.find_element(:xpath, "(//button[@type='button'])[2]").click #month
  @driver.find_element(:xpath, "(//button[@type='button'])[4]").click #January
  @driver.find_element(:xpath, "(//button[@type='button'])[7]").click #1-1-2015
  @driver.find_element(:name, "endDate0").click # chouse endDate
  @driver.find_element(:xpath, "(//button[@type='button'])[47]").click #month
  @driver.find_element(:xpath, "(//button[@type='button'])[60]").click #December
  @driver.find_element(:xpath, "(//button[@type='button'])[80]").click #31-12-2015
  @driver.find_element(:name, "buttonSave").click #click save
  sleep 2
end

while @min <= @max do
  create_resources
  @min += 1
end

@driver.quit
