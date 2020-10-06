*** Settings ***
Documentation       All keyword on TM page

*** Keywords ***
User navigate to TM R&D website
    go to    https://www.tmrnd.com.my
    wait until element is visible    //*[contains(text(),"About Us")]        ${TIMEOUT}

User access About page
    click element    link:About Us
    wait until element is visible    //h1[contains(text(),"about us")]    ${TIMEOUT}

User access People page
    click element    link:People
    wait until element is visible    //h1[contains(text(),"People")]    ${TIMEOUT}

User access Product page
    click element    link:Products
    wait until element is visible    //h1[contains(text(),"Products")]    ${TIMEOUT}

User access Staff Login page
    click element    link:Staff Login
    wait until element is visible    //h3[contains(text(),"Login to TM R&D Website")]    ${TIMEOUT}

User login into staff login
    [Arguments]     ${staff_no}    ${password}
    input text    //input[@placeholder="Staff Number"]    ${staff_no}
    input text    //input[@placeholder="Password"]    ${password}
    click element    //button[contains(text(),"Login")]
