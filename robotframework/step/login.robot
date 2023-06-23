***Settings ***
Library             SeleniumLibrary
Variables           ../resources/login_locators.yaml

***Variables ***
${LOGIN URL}     https://www.saucedemo.com/
${BROWSER}       Chrome


***Keywords ***
Open Browser to WebSauceDemo
    Open Browser    ${LOGIN URL}    ${BROWSER}
Close Browser
    Close Browser

Input Username
    Input Text     ${txtUsername}    standard_user 
Input Invalid Username
    Input Text     ${txtUsername}    yuhu

Input password
    Input Text    ${txtPassword}    secret_sauce

Click login button
    Click button    ${btnLogin}
    Sleep   1s

Verify on Login Page
    Page Should Contain     Products


***Test Cases ***
User Login with valid data
    Open Browser to WebSauceDemo
    Input Username
    Input password
    Click login button
    Verify on Login Page

User Login with valid data
    Open Browser to WebSauceDemo
    Input Invalid Username
    Input password
    Click login button