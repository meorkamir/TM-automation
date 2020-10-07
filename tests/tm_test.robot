*** Settings ***
Resource     ${EXECDIR}/keyword/main.robot

Test Setup        user launch browser
Test Teardown     user close browser

*** Test Cases ***
Test#1-- Test TM R&D website
    [Tags]      testTM
    User navigate to TM R&D website
    User access About page
    User access People page
    User access Product page
    User access Staff Login page
    User login into staff login    C12345    1234567
    User unable to login with invalid credential