Feature: JPH04 Kullanici Json objesi olan test datalarını buradan kullanabilmeli

  Background:
    * def baseUrl = "https://jsonplaceholder.typicode.com"
    * def pathParams = "/posts/70"
    * def requestBody = read("td_requestBody.json")
    * def expectedResponse = read("td_expectedResponse.json")

  @api1
  Scenario: TC04 disaridan Json Obje Kullanilabilmeli

    Given url baseUrl
    And path pathParams
    And request requestBody
    And method PUT
    Then status 200
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Connection == "keep-alive"
    And match response == expectedResponse
