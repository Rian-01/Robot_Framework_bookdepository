*** Settings ***
Documentation  Source Url
Library    SeleniumLibrary
Resource    source.robot
Resource    priceFilter.robot

*** Keywords ***
Find a book of interest and View details
   Wait Until Element Is Visible    ${item_book1}    timeout=5
   Click Element    ${item_book1}
Add to Cart the selected book
    Wait Until Element Is Visible    ${add_cart}    timeout=5
    Click Element    ${add_cart}
Visit my cart
    Wait Until Element Is Visible  ${go_to_Cart}       timeout=2 
    Click Element    ${go_to_Cart}
Delete book items to empty the cart
    Wait Until Element Is Visible    ${button_remove_Cart}    timeout=5
    Click Element    ${button_remove_Cart}
Validate that my basket is empty
    Wait Until Element Contains    ${validation_cart}    Your basket is empty.

# Whishlist book
#     [Documentation]  A wish list of book items to buy when you have the funds
#     Open Browser  ${base_url}  Chrome
#     Wait Until Element Is Visible    ${item_book2}    timeout=5
#     Click Element    ${item_book2}
#     Wait Until Element Is Visible    ${add_wishlist}    timeout=5
#     Click Element    ${add_wishlist}
#     Wait Until Element Contains    ${validate_login}    Not logged in
#     Close Browser