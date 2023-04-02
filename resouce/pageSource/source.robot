*** Settings ***
Documentation  Source Url
Library    SeleniumLibrary


*** Variables ***
${base_url}    https://www.bookdepository.com
${bestSeller}    css:[href="/bestsellers"]
${filterPrice}    id:filterPrice
${filterAvailability}    id:filterAvailability
${button_result}    css:[class="btn btn-primary"]
${validation_info}    id:search-info 
${item_book1}    css:[href="/Daisy-Jones-Six-Taylor-Jenkins-Reid/9781787462144?ref=grid-view"]
${add_cart}    css:[href="/basket/addisbn/isbn13/9781787462144"]
${go_to_Cart}    css:[class="btn btn-primary pull-right continue-to-basket string-to-localize link-to-localize"]
${button_remove_Cart}    css:[class="btn remove-btn"]
${validation_cart}    css:[class="checkout-head-wrap"]
${item_book2}    css:[href="/It-Ends-With-Us-most-heartbreaking-novel-youll-ever-read-Colleen-Hoover/9781471156267?ref=grid-view"]
${add_wishlist}    css:[href="/account/wishlistItemUpdate?mainAction=add&isbn13=9781471156267"]
${validate_login}    css:[class="modal-header"

