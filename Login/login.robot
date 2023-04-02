*** Settings ***
Documentation  Login
Library    SeleniumLibrary

*** Test Cases ***
Login store
    [Documentation]    Input credential for login at bookdepository
    # Open Browser    https://www.bookdepository.com    Chrome
    # Wait Until Element Is Visible  css:[href="/account/login/to/account"]  timeout=5
    # Click Element    css:[href="/account/login/to/account"]
    # Wait Until Element Is Visible    id="ap_email"
    # Input Text  id="ap_email"  softwaretestingakun@gmail.com
    # Input Password  id="ap_password"  Akuntes1
    # Wait Until Element Is Visible    id:signInSubmit    timeout=5
    # Click Element  id:signInSubmit
    # Wait Until Element Contains    css:[href="/account"]    My Account
    # Close Browser