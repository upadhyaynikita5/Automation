*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/InventoryPage.robot

Test Setup     Open Browser    https://www.saucedemo.com/    chrome
Test Teardown  Close Browser

*** Test Cases ***
Add To Cart Test
    Input Text    id=user-name    standard_user
    Input Text    id=password     secret_sauce
    Click Button  id=login-button
    Verify Inventory Page Loaded
    Add Backpack To Cart
    Verify Item Added To Cart

Remove From Cart Test
    Input Text    id=user-name    standard_user
    Input Text    id=password     secret_sauce
    Click Button  id=login-button
    Verify Inventory Page Loaded
    Add Backpack To Cart
    Remove Backpack From Cart
    Verify Cart Is Empty
