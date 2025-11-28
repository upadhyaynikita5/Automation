*** Settings ***
Resource    ../Resources/browser_keyword.robot
Resource    ../Resources/variables.robot
Resource    ../Pages/InventoryPage.robot
Resource    ../Pages/Loginpage.robot

Suite Setup       Open SauceDemo
Suite Teardown    Close Browser Session

*** Test Cases ***
*** Test Cases ***
Add To Cart Test
    [Tags]    cart    positive
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded
    Add First Product To Cart
    Open Cart

Remove From Cart Test
    [Tags]    cart    negative

    Remove First Product From Cart
    Open Cart

