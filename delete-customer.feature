Feature: DELETE /customers/:id

Scenario: Delete a specific Customer
Given a request
When DELETE "/customers/345-ed34d-43"
Then status = 204

Scenario: Try to delete a Customer that does not exits
Given a request
When DELETE "/customers/1111222"
Then status = 404
  And the body:
  """
{
  "message": "The customer '1111222' does not exists"
}
  """
