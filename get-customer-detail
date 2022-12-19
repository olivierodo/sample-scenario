Feature: GET /customers/:id

Scenario: Get Customer details
Given a request
When GET "/customers/345-ed34d-43"
Then status = 200
  And the body:
  """
{
  "id": "345-ed34d-43",
  "firstname": "John",
  "lastname": "Doe",
  "address": {
    "street": "43 Empire blvd",
    "zip": 11225,
    "city": "NYC"
  },
  "email": "john.doe@gmail.com"
}
  """

Scenario: Customer does not exits
Given a request
When GET "/customers/1111222"
Then status = 404
  And the body:
  """
{
  "message": "The customer '1111222' does not exists"
}
  """
