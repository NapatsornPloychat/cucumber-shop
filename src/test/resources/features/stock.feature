Feature: Check Stock
  As a customer
  I want to buy products and stock should be cut from stock

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Cake" with price 100.00 and stock of 8 exists

  Scenario: Cut Stock
    When I buy "Cake" with quantity 2
    Then stock of "Cake" should be 6

