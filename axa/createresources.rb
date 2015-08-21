#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/resources") #go to demo-server resource page

def create_resources
  @driver.find_element(:link, "CREATE NEW RESOURCE").click # button "create new resource"
  @driver.find_element(:name, "name").click # resource name
  @driver.find_element(:name,"name").send_keys "resource#@min"
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
end

while @min <= @max do
  create_resources
  @min += 1
end

@driver.quit
