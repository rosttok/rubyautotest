#!/usr/bin/env ruby
require "selenium-webdriver"

@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://localhost:5000"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page



def edit_project_1
  sleep 1
  @driver.find_element(:xpath,("//li[@class='list-group-item ng-binding ng-scope'][#{@min}]")).click # chose first project from the list
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-axa-default'][1]")).click # click edit button
  sleep 1

  @arg1 = 0
  @arg2 = 2
  @a = 1
  while @arg1 <= @arg2 do
  @driver.find_element(:xpath,("//li[@class='list-group-item list-resources-item ng-scope'][#{@a}]/span[@class='resource-name ng-binding']")).click
  sleep 1

  week = 1

    while week <= 53 do
      random = rand(0.01...5.00)
      r = random.round 2
      @driver.find_element(:name, "week[#{@arg1}W#{week}]").clear
      @driver.find_element(:name, "week[#{@arg1}W#{week}]").send_keys "#{r}"
      week += 1
    end
  @arg1 += 1

  end

  sleep 1
  @driver.find_element(:xpath,("//div[@class='modal-footer']/button[@class='btn btn-modal-success']")).click # click save button on edit popup
  sleep 1
  @driver.get(@base_url + "#/management/project")
end

while @min <= @max do
  edit_project_1
  @min += 1
end

@driver.quit
