require "selenium-webdriver"



@min = 1
repeat = ARGV.join('')
@max = repeat.to_i
@driver = Selenium::WebDriver.for :chrome
@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
@driver.get(@base_url + "#/management/project") #go to demo-server project page

def edit_project
  @driver.find_element(:xpath,("//li[@class='list-group-item ng-binding ng-scope'][1]")).click # chose first project from the list
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-axa-default'][1]")).click # click edit button
  sleep 1
  @driver.find_element(:xpath,("//li[@class='list-group-item list-resources-item ng-scope']")).click # click project to expand
  sleep 1
  @driver.find_element(:xpath,("//input[@class='form-control ng-pristine ng-untouched ng-valid ng-isolate-scope ng-valid-date']")).click # click to see choose month
  @driver.find_element(:xpath,("//button[@class='btn btn-default']")).click
  sleep 1
  @driver.find_element(:xpath,("//div/div/div[1]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).clear
  sleep 1
  @driver.find_element(:xpath,("//div/div/div[1]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).send_keys "#{random_number}"
  @driver.find_element(:xpath,("//div/div/div[2]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).clear
  sleep 1
  @driver.find_element(:xpath,("//div/div/div[2]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).send_keys "#{random_number}"
  @driver.find_element(:xpath,("//div/div/div[3]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).clear
  sleep 1
  @driver.find_element(:xpath,("//div/div/div[3]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).send_keys "#{random_number}"
  @driver.find_element(:xpath,("//div/div/div[4]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).clear
  sleep 1
  @driver.find_element(:xpath,("//div/div/div[4]/input[@class='form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-valid-required']")).send_keys "#{random_number}"
  sleep 1
  @driver.find_element(:xpath,("//button[@class='btn btn-modal'][2]")).click # click save button on edit popup
  sleep 1
end

def random_number
  rannum = rand(0.001..5)
  @num = (rannum * 1000).to_i.to_f / 1000
  return @num
end

while @min <= @max do
  edit_project
  @min += 1
end

@driver.quit
