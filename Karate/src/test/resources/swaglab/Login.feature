Feature: Swag Labs Login Test

  Scenario: Valid login
    Background:
    * configure driver = { type: 'chrome', executable: '"C:/Program Files/Google/Chrome/Application/chrome.exe"' }
    * driver 'https://www.saucedemo.com'
    * input('#user-name', 'standard_user')
    * input('#password', 'secret_sauce')
    * click('#login-button')
    * waitForUrl('https://www.saucedemo.com/inventory.html')
    * match driver.url == 'https://www.saucedemo.com/inventory.html'
    * print 'Login successful!'

    
  

