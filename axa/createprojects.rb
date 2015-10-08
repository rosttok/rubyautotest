#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
@time = Time.new.nsec
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
#@base_url = "http://localhost:5000"
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page

def create_projects
  sleep 2
  @driver.find_element(:name, "CreateButton").click  #click button "create new project"
  sleep 2
  @driver.find_element(:name, "name").clear # select field "name"
  @driver.find_element(:name, "name").send_keys "project #@min #@time" # fill field "name"
  @driver.find_element(:name, "wbs").clear # select field "wbs"
  @driver.find_element(:name, "wbs").send_keys "wbs+#@min.#@time" # fill field "wbs"
  @driver.find_element(:name, "startDate").click # select calendar(from) select 1 January 2015
  @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[7]").click
  @driver.find_element(:name, "endDate").click # select calendar(to) select 31 December 2015
  @driver.find_element(:xpath, "(//button[@type='button'])[47]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[60]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[80]").click
  @driver.find_element(:name, "responsible").clear #select  field "responsible"
  @driver.find_element(:name, "responsible").send_keys "admin" # fill field "responsible"
  @driver.find_element(:xpath, "(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'])").click
  @driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
  @driver.find_element(:name, "description").clear # select field "description"
  @driver.find_element(:name, "description").send_keys "description - #@time" # fill field "description"
  sleep 2
  @driver.find_element(:name, "buttonSave").click # click button "create"
  sleep 2
end

while @min <= @max do
  create_projects
  @min += 1
end

@driver.quit #quit
