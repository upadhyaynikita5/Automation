*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCTS_TITLE}          xpath=//span[text()='Products']
${ADD_BACKPACK_BTN}        id=add-to-cart-sauce-labs-backpack
${REMOVE_BACKPACK_BTN}     id=remove-sauce-labs-backpack
${CART_ICON}               class=shopping_cart_link
${CART_BADGE}              class=shopping_cart_badge

*** Keywords ***
Verify Inventory Page Loaded
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}    10s

Add Backpack To Cart
    Wait Until Element Is Visible    ${ADD_BACKPACK_BTN}    10s
    Click Element    ${ADD_BACKPACK_BTN}

Remove Backpack From Cart
    Wait Until Element Is Visible    ${REMOVE_BACKPACK_BTN}    10s
    Click Element    ${REMOVE_BACKPACK_BTN}

Open Cart
    Wait Until Element Is Visible    ${CART_ICON}    10s
    Click Element    ${CART_ICON}

Verify Item Added To Cart
    Wait Until Element Is Visible    ${CART_BADGE}    10s

Verify Cart Is Empty
    Page Should Not Contain Element    ${CART_BADGE}
