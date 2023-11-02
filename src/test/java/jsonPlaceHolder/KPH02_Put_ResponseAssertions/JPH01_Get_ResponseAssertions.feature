Feature: JPH01 Kullanici Get request sonucu donen response test eder
  @api1
  Scenario: TC01 Get request'e donen response'in beklenilen ozelliklerde olmasi gerekir
    
    Given url 'https://jsonplaceholder.typicode.com/posts/44'
    When method GET
    Then status 200
    Then match header Content-Type == 'application/json; charset=utf-8'
    And match response.userId == 5
    And match response.title == 'optio dolor molestias sit'