*** Settings ***
Documentation       Main file with reusable code to run web application

Library         SeleniumLibrary
Resource        ${EXECDIR}/keyword/tm_page.robot

*** Variables ***
${TIMEOUT}    10s

*** Keywords ***
setup browser with desired capabilities
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument      disable-web-security
    Call Method    ${options}    add_argument      allow-running-insecure-content
    Create WebDriver  Chrome    chrome_options=${options}

user launch browser
    setup browser with desired capabilities                 #turn off security due to tm login page in insecure state
    Go To    https://google.com
    maximize browser window

user close browser
    close browser