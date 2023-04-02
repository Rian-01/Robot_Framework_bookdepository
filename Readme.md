# Testing Book Depository with Robot Framework

This project is a technical test and practice Robot Framework. This tests several streams on the Book Depository: https://www.bookdepository.com/.


## Tools
* Robot Framework
* Visual Studio Code
* python (```brew install python```)
* selenium library (```pip install robotframework-seleniumlibrary```)
* robotframework (```pip install robotframework```)
* robotframework-seleniumlibrary (```pip install --upgrade robotframework-seleniumlibrary```)


## Project Folder Structure
```
ROBOTFM/
+--Login            (script with test case just for login)
+--resources       
|  +--pageobjects   (objects from pages used for test cases)
+--Test_case            (script with test cases)
```

## Coverage Test Case
* Low to High Price Screening
* Add and Remove book items from Cart
* Whishlist book

## Notes
For the login test case, I have the following problem:
* Unique locator or id on duplicate elements
* Difficulty describing unique id elements
* When executing duplicated unique ids, it throws an error
