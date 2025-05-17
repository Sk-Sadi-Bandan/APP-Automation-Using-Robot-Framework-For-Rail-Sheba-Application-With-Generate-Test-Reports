*** Settings ***
Documentation     Onbording Module Test Case
Library           AppiumLibrary
Library           BuiltIn
Resource           ../Environment/AppSetup.robot
Resource           ../pages/Ticket_Purchase.robot  




***Keywords***

***Test Cases*** 
#Test Case 1
Scenario: Verify that Station Search is Properly
    [Tags]    ticket1
    Open app
    Click on Disclimer I Agree
    Click on From Select Station
    Click on From Search Station Input From Station
    Click on From Station
    Click on To Select Station
    Click on To Search Station Input To Station
    Click on To Station
    Click on Select Class
    Click on a specific Class
    Click on Select Journey Date
    Click on a specific Date
    Click on Search Trains
    Close app


#Test Case 2
Scenario: Verify that Destination Modify is Properly
    [Tags]    ticket2
    Open app
    Click on Disclimer I Agree
    Click on From Select Station
    Click on From Search Station Input From Station
    Click on From Station
    Click on To Select Station
    Click on To Search Station Input To Station
    Click on To Station
    Click on Select Class
    Click on a specific Class
    Click on Select Journey Date
    Click on a specific Date
    Click on Search Trains
    Click on Modify
    Click on Modify To Select Station
    Click on Modify To Search Station Input To Station
    Click on Modify To Station
    Click on Search Trains
    Close app


#Test Case 3
Scenario: Verify that Ticket Purchase is working Properly
    [Tags]    ticket3
    Open app
    Click on Disclimer I Agree
    Click on From Select Station
    Click on From Search Station Input From Station
    Click on From Station
    Click on To Select Station
    Click on To Search Station Input To Station
    Click on To Station
    Click on Select Class
    Click on a specific Class
    Click on Select Journey Date
    Click on a specific Date
    Click on Search Trains
    Click on Book Now
    Click on Available Coach
    Click on Available Seat
    Click on Continue Purchase
    Close app

