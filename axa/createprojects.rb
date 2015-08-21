#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page

def create_projects
  @driver.find_element(:link, "CREATE NEW PROJECT").click #click button "create new project"
  @driver.find_element(:name, "name").clear # select field "name"
  @driver.find_element(:name, "name").send_keys "project#@min" # fill field "name"
  @driver.find_element(:name, "wbs").clear # select field "wbs"
  @driver.find_element(:name, "wbs").send_keys "wbs#@min" # fill field "wbs"
  @driver.find_element(:xpath, "(//input[@type='text'])[3]").click # select calendar(from) select 1 January 2015
  @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[8]").click
  @driver.find_element(:xpath, "(//input[@type='text'])[4]").click # select calendar(to) select 31 December 2015
  @driver.find_element(:xpath, "(//button[@type='button'])[50]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[63]").click
  @driver.find_element(:xpath, "(//button[@type='button'])[84]").click
  @driver.find_element(:name, "description").click # select field "description"
  @driver.find_element(:name, "description").send_keys "description - #@min" # fill field "description"
  @driver.find_element(:xpath, "//div[4]/button[2]").click # click button "create"
end

while @min <= @max do
  create_projects
  @min += 1
end
@driver.quit
