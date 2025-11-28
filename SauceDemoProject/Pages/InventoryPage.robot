*** Variables ***
${ADD PRODUCT}      xpath=//*[@id="add-to-cart-sauce-labs-backpack"]
${REMOVE PRODUCT}   xpath=//*[@id="remove-sauce-labs-backpack"]
${CART ICON}        xpath=//*[@class="shopping_cart_link"]
${LOGOUT}           xpath=//*[@id="logout_sidebar_link"]

*** Keywords ***
Add first product to cart
    Click Element   ${ADD PRODUCT}

Remove first product from cart
    Click Element   ${REMOVE PRODUCT}

Open cart
    Click Element   ${CART ICON}



