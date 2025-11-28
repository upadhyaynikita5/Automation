*** Settings ***
Resource    ../Pages/LoginPage.robot
Resource    ../Resources/browser_keyword.robot
Resource    ../Resources/variables.robot

Suite Setup       Open SauceDemo
Suite Teardown    Close Browser Session

*** Test Cases ***
Valid Login Test
    [Tags]    login    positive
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded

Invalid Login Test
    [Tags]    login    negative
    Go To    ${BASE_URL}       # ensures login page is open
    Enter Username    ${INVALID_USERNAME}
    Enter Password    ${INVALID_PASSWORD}
    Click Login Button
    Verify Login Error Message
