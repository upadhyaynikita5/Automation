*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/Loginpage.robot
Resource   ../Pages/InventoryPage.robot
Resource   ../Resources/variables.robot

Suite Setup     Open Browser    https://www.saucedemo.com/    chrome
Suite Teardown  Close Browser

*** Test Cases ***
Login Test
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded

