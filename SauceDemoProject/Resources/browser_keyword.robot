*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open SauceDemo
    Open Browser    ${BASE_URL}     ${BROWSER}
    maximize Browser Window

Close Browser Session
    Close All Browsers
