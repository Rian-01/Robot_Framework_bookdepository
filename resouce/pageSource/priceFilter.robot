*** Settings ***
Documentation  Source Url
Library    SeleniumLibrary
Resource    source.robot

*** Keywords ***
Load bookdepository in browser
    Open Browser  ${base_url}  Chrome

Close Annoucement
    Wait Until Element Is Visible    ${closeannounce}    timeout=5
    Click Element    ${closeannounce}
Visit the bestseller menu
    Wait Until Element Is Visible  ${bestSeller}  timeout=5
    Click Element  ${bestSeller}
Price and availability screening
    Wait Until Element Is Visible  ${filterPrice}  timeout=5
    Select From List By Index  ${filterPrice}  2
    Select From List By Index    ${filterAvailability}    1
Click button Refine results & Validation data
    Click Element    ${button_result}
    Wait Until Element Contains    ${validation_info}    Showing 1 to 30 of 
# *** Test Cases ***
# Low to High Price Screening
#     [Documentation]  Low to High Price Screening at bestsellers menu
#     Load bookdepository in browser
#     Visit the bestseller menu
#     Price and availability screening
#     Click button Refine results & Validation data
#     Close Browser

# Add and Remove book items from Cart
#     [Documentation]  Selection of books in the shopping cart
#     Open Browser  ${base_url}  Chrome
#     Wait Until Element Is Visible    ${item_book1}    timeout=5
#     Click Element    ${item_book1}
#     Wait Until Element Is Visible    ${visit_item1}    timeout=5
#     Click Element    ${visit_item1}
#     Wait Until Element Is Visible  ${button_add_Cart}       timeout=3 
#     Click Element    ${button_add_Cart} 
#     Wait Until Element Is Visible    ${button_remove_Cart}    timeout=5
#     Click Element    ${button_remove_Cart}
#     Wait Until Element Contains    ${validation_cart}    Your basket is empty.
#     Close Browser

# Whishlist book
#     [Documentation]  A wish list of book items to buy when you have the funds
#     Open Browser  ${base_url}  Chrome
#     Wait Until Element Is Visible    ${item_book2}    timeout=5
#     Click Element    ${item_book2}
#     Wait Until Element Is Visible    ${visit_item2}    timeout=5
#     Click Element    ${visit_item2}
#     Wait Until Element Contains    ${validate_login}    Not logged in
#     Close Browser