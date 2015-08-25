#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page


def edit_project
  @driver.find_element(:xpath,("//li[@class='list-group-item ng-binding ng-scope'][#@min]")).click # chose first project from the list
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-axa-default'][1]")).click # click edit button
  sleep 1
  @driver.find_element(:xpath,("//span[@class='pull-right ap-delete']")).click
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-modal'][2]")).click # click save button on edit popup
  sleep 1
  @driver.get(@base_url + "#/management/project")
end

while @min <= @max do
  edit_project
  @min += 1
end

@driver.quit
