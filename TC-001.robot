*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${URL}              https://www.amazon.in

*** Test Cases ***
Automate Cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    2

    # Click on the cart icon/link to navigate to the cart page
    Click Element    id=["nav-cart-text-container"]/span[2]/text()

    # Wait for the cart page to load
    Wait Until Element Is Visible    class=cart-item

    # Get the initial count of items in the cart
    ${initial_item_count}=    Get Matching Xpath Count    //div[@class="cart-item"]

    # Empty the cart (hypothetical scenario: clicking "Empty Cart" button)
    Click Element    id=empty-cart-button

    # Wait for the cart to be emptied
    Wait Until Element Disappears    class=cart-item

    # Search for a product and add it to the cart
    Input Text    id=search-box    Product Name
    Press Keys    id=search-box    RETURN

    # Wait for search results and click on the product
    Wait Until Element Is Visible    class=search-result-item
    Click Element    class=search-result-item

    # Add the product to the cart
    Click Element    id=add-to-cart-button

    # Wait for the cart to update with the added product
    Wait Until Element Contains    id=cart-item-count    ${initial_item_count + 1}

    # Get the updated count of items in the cart
    ${updated_item_count}=    Get Text    id=cart-item-count

    Log    Initial Item Count: ${initial_item_count}
    Log    Updated Item Count: ${updated_item_count}

    # Close the browser
    Close Browser
