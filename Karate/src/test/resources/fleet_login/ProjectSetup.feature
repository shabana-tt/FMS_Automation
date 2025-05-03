Feature: Project Setup screen validation

Background:
    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    * driver 'http://localhost:4200/'


Scenario: Login and validate Project screen

  # Login Steps
  * configure driver = { type: 'chrome', timeout: 15000 }
  * waitFor("//*[text()='User Role']")
  * delay(500)
  * click("//label[normalize-space()='Administrator']")
  * waitFor("//input[@id='username']")
  * input("//input[@id='username']", 'Vicky')
  * waitFor("//input[@id='password']")
  * input("//input[@id='password']", '123')
  * waitFor("//button[normalize-space()='LOGIN']")
  * click("//button[normalize-space()='LOGIN']")
  * waitForUrl('http://localhost:4200/project_setup')
  * match driver.url contains 'project_setup'
  * print 'Login successful!'

  # Project screen validations
  * waitFor("//p[@class='ProjTitle']")
  * match text("//h1") == 'PROJECT'

  * def createBtn = "//button[normalize-space()='Create New Project']"
  * waitFor(createBtn)
  * match text(createBtn) == 'Create New Project'
  * click(createBtn)

  * def importBtn = "//button[normalize-space()='Import Project']"
  * waitFor(importBtn)
  * match text(importBtn) == 'Import Project'

  * def existingBtn = "//button[normalize-space()='Existing Project']"
  * waitFor(existingBtn)
  * match text(existingBtn) == 'Existing Project'

  * def logoutBtn = "//button[normalize-space()='LOGOUT']"
  * waitFor(logoutBtn)
  * match text(logoutBtn) == 'LOGOUT'
