*** Settings ***
Documentation       Main file with reusable code to run web application

Library         SeleniumLibrary
Resource        ${EXECDIR}/keyword/tm_page.robot

*** Variables ***
${TIMEOUT}    10s

*** Keywords ***
user launch ${browser_type} browser
    open browser    https://www.google.com     ${browser_type}
    maximize browser window

user close browser
    close browser