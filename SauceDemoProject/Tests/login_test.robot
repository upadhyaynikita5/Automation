*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/Loginpage.robot
Resource   ../Pages/InventoryPage.robot
Resource   ../Resources/variables.robot

Suite Setup     Open Browser    https://www.saucedemo.com/    chrome
Suite Teardown  Close Browser

*** Test Cases ***
Add To Cart Test
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded
    Add Backpack To Cart
    Verify Item Added To Cart

Remove From Cart Test
    Go To    https://www.saucedemo.com/
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded
    Add Backpack To Cart
    Remove Backpack From Cart
    Verify Cart Is Empty
