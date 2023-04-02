*** Settings ***
Documentation  Technical Test
Library    SeleniumLibrary
Resource    ../resouce/pageSource/priceFilter.robot
Resource    ../resouce/pageSource/itemCart.robot
Resource    ../resouce//pageSource/wishList.robot

*** Test Cases ***
Low to High Price Screening
    [Documentation]  Low to High Price Screening at bestsellers menu
    Load bookdepository in browser
    Visit the bestseller menu
    Price and availability screening
    Click button Refine results & Validation data
    Close Browser

Add and Remove book items from Cart
    [Documentation]  Selection of books in the shopping cart
    Load bookdepository in browser
    Find a book of interest and View details
    Add to Cart the selected book
    Visit my cart
    Delete book items to empty the cart
    Validate that my basket is empty
    Close Browser

Whishlist book
    [Documentation]  A wish list of book items to buy when you have the funds
    Load bookdepository in browser
    Select the book of interest
    Add books to wishlist
    It can be validated that I am not logged in
    Close Browser  