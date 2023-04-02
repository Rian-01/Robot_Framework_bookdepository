*** Settings ***
Documentation  Source Url
Library    SeleniumLibrary
Resource    source.robot
Resource    priceFilter.robot
Resource    itemCart.robot

*** Keywords ***
Select the book of interest
    Wait Until Element Is Visible    ${item_book2}    timeout=5
    Click Element    ${item_book2}
Add books to wishlist
    Wait Until Element Is Visible    ${add_wishlist}    timeout=5
    Click Element    ${add_wishlist}
It can be validated that I am not logged in
   Wait Until Element Contains    ${validate_login}    Not logged in
# *** Test Cases ***
# Whishlist book
#     [Documentation]  A wish list of book items to buy when you have the funds
#     Load bookdepository in browser
#     Select the book of interest
#     Add books to wishlist
#     It can be validated that I am not logged in
#     Close Browser