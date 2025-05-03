Feature: Fleet Login Test
  Background:
    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    * driver 'http://localhost:4200/'

  @regression
  Scenario: Valid login
    * configure driver = { type: 'chrome', timeout: 15000 }
    * waitFor("//*[text()='User Role']")
    * delay(500)
    * click("//label[normalize-space()='Administrator']")
    
    * waitFor("//input[@id='username']")
    * delay(300)
    * input("//input[@id='username']", 'Vicky')

    * waitFor("//input[@id='password']")
    * delay(300)
    * input("//input[@id='password']", '123')

    * waitFor("//button[normalize-space()='LOGIN']")
    * click("//button[normalize-space()='LOGIN']")

    * waitForUrl('http://localhost:4200/project_setup')
    * match driver.url contains 'project_setup'
    * print 'Login successful!'
    