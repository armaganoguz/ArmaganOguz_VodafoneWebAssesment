#Author: sevkiarmaganoguz@gmail.com
#Date: 18.08.2022

Feature: •	Any browser opens and the "http://automationpractice.com/" page is displayed.
  •	New member registration is performed. (sign up steps) 
  •	By entering user and address information with "Sign in" > "Create Account" option, new user is created. 
  •	It is verified that the user is created on the homepage. 
  •	"Dresses" > "Summer Dresses" menu is selected and at the opened category, a product is added to the Basket from the page. 
  •	"Summer" product search is performed and a product is added to the Cart from the results page. 
  •	With the "Cart" > "Check Out" menu, the Cart is displayed, the added products are verified. (Number of products, product names, price information, etc.) and with the "Proceed to checkout" option, go to the next step. 
  •	Address selection is performed and with the "Proceed to checkout" option, you can proceed to the next step. 
  •	On the "Shipping" screen that opens, the Cargo option and terms of service are accepted and with the "Proceed to checkout" option,  the "Payment" step is appeared. 
  •	The order is completed by selecting any payment method on the payment screen. 
  •	The created order will be controlled on "Order history and details" screen that is located in user menu controlled.
 
  Scenario: Check the conditions specified in the assessment with the correct parameters
  
    Given user is on home page
    When user is on signup page
    And user enters <email> and navigates to create an account
    And user fills the blanks and register
    Then verify that user is created
    When User selects 'Dresses' > 'Summer Dresses' 
    And User adds a product in the basket
    And User search 'Summer'
    Then User adds a product to cart
    When User displays 'Cart' > 'Check Out' to verify products and proceeds the check out
    And User selects address and proceeds to checkout
    And User accepts terms of service and proceeds to checkout
    And User selects payment method and completes the order
    Then User controls the order on 'Menu' > 'Order history and details' screen
    
    Examples:
    | email |
    | vodafoneassesment@gmail.com |
