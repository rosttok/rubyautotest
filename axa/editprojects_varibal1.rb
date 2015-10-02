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
  @driver.find_element(:xpath, ("//li[@class='list-group-item ng-binding ng-scope'][#{@min}]")).click # chose project from the list
  sleep 1
  @driver.find_element(:xpath, ("//button[@class='btn btn-axa-default'][1]")).click # click edit button
  sleep 1

  @a = 1
  @arg1 = 1
  @arg2 = 1 # maximum resources what need filled

  while @arg1 <= @arg2 do

    @driver.find_element(:xpath,("//li[@class='list-group-item list-resources-item ng-scope'][#{@a}]/span[@class='resource-name ng-binding']")).click # chose resource from the list
    sleep 1
    puts "#{@arg1}"

    week = 1
    @res = 0

    while week <= 53 do
      random = rand(0.01...4.99)
      r = random.round 2
      @driver.find_element(:name, "week[#{@res}W#{week}]").clear
      @driver.find_element(:name, "week[#{@res}W#{week}]").send_keys "#{r}"
      week += 1
    end

    @res += 1
    @arg1 += 1
    @a += 1
    puts "#{@arg1}"
  end

  sleep 1
  @driver.find_element(:name, "buttonSave").click # click save button on edit popup
  sleep 1
  @driver.get(@base_url + "#/management/project")

end

while @min <= @max do
  edit_project_1
  @min += 1
end

@driver.quit
