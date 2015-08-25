#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page

def delete_projects
  @driver.find_element(:xpath,("//li[@class='list-group-item ng-binding ng-scope'][1]")).click # chose first project from the list
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-axa-default'][2]")).click # click button delete
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-danger']")).click
  sleep 1
end


while @min <= @max do
  delete_projects
  @min += 1
end

@driver.quit
