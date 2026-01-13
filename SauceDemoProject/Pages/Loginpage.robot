*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    id=user-name    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Click Login Button
    Click Button    id=login-button

Verify Login Error Message
    Page Should Contain Element    xpath=//h3[@data-test='error']
