Feature: Obtain merchant information

  Background:

  Scenario: Valid Merchant Id
    Given the list of merchants in Aurus:
      |MerchantId|Name       |Address   |
      |abc123   |Fybeca     |occidental |
      |xyz456   |LatamAutos |manosca    |
    And I am a user with merchantId abc123
    When I try get the information of my merchant
    Then I can see the address occidental

    
