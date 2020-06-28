@full_regression
@accessibility
Feature: Checkout flows on the Fake Ecommerce
  As a user of the Fake Ecommerce Website
  I would like it to be accessible
  For all people being able to shop with no accessibility problems

@accessibility_home
Scenario: Check the common accessibility of the home page
  Given i am on the home page
  Then the page should be accessible

@accessibility_header
Scenario: Check the common accessibility of the main header
  Given i am on the home page
  Then the page should be accessible within "#header"

@accessibility_footer
Scenario: Check the common accessibility of the main footer
  Given i am on the home page
  Then the page should be accessible within ".footer-container"

@accessibility_footer_excluding_some_elements
Scenario: Check the common accessibility of the main footer
  Given i am on the home page
  Then the page should be accessible within ".footer-container" but excluding "button[name='submitNewsletter'], #newsletter-input, .facebook, .twitter, .youtube, .google-plus"

