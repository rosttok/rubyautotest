# Test created on Ruby

# In folder axa have two tests "Create projects and resources" and chrome webdriver

# 1.Install Ruby
* sudo apt-get install ruby

# 2.Install gem selenium-webdriver
* gem install selenium-webdriver

# 3.Install ChromeDriver:
* chmod +x chromedriver
* sudo mv -f chromedriver /usr/local/share/chromedriver
* sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
* sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

# How to run test
* ruby createprojects.rb n (n its number how many you wanna create projects)
* ruby createresources.rb n (n its number how many you wanna create resources)

# What test do

# 1. createprojects.rb
* Create projects:
* name: project1,project2,...,project(n)
* wbs: wbs1,wbs2,...,wbs(n)
* dates: 1/1/15 - 31/12/15
* discription: discription1,discription2,...,discription(n)

# 2. createresources.rb
* Create resources:
* name: resource1, resource2,...,resource(n)
* intern
* within AXA promises
* contract: 1/1/15 - 31/12/15
