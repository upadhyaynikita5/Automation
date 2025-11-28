*** Variables ***
${USERNAME_FIELD}   id=user-name
${PASSWORD_FIELD}   id=password
${LOGIN_BUTTON}     xpath=//*[@id="login-button"]
${ERROR_MESSAGE}    xpath=//button[@class="error-button"]
${VERIFY_MESSAGE}   xpath=//*[@class="app_logo"]

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    5s
    Clear Element Text    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}    5s
    Clear Element Text    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Login Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    5s

Verify Inventory Page Loaded
    Wait Until Element Is Visible   ${VERIFY_MESSAGE}    5s

Valid Login Test
    Enter Username    ${VALID_USERNAME}
    Enter Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Inventory Page Loaded



