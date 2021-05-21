Feature: Manage bookings

  Scenario: getBookingIds
    Given url 'https://restful-booker.herokuapp.com/booking'
    When method GET
    Then status 200

  Scenario:
    Given url 'https://restful-booker.herokuapp.com/auth'
    * header Content-Type = 'application/json'
    # And request {"username" : "admin","password" : "password123"}
    And request
     """
     {
     "username" : "admin",
     "password" : "password123"
     }
     """
    When method POST
    Then status 203
    And print "hello"