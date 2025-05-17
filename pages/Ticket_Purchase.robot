*** Settings ** 
Library        AppiumLibrary
Library        OperatingSystem
Library        BuiltIn
Resource           ../pages/Ticket_Purchase.robot




*** Variables ***
${I_Agree}                                   xpath=//android.widget.Button[@text="I AGREE"]
${From_Select_Station}                       xpath=//android.widget.TextView[@text="Select Station"]
${Search_Station}                            xpath=//android.widget.EditText
${From_Station}                              xpath=//android.widget.ListView/android.view.View[1]
${To_Select_Station}                         xpath=//android.widget.TextView[@text="Select Station"]
${To_Station}                                xpath=//android.widget.ListView/android.view.View
${Select_Class}                              xpath=//android.widget.TextView[@text="Select Class"]
${Specific_Class}                            xpath=//android.widget.Button[@text="SNIGDHA"]
${Select_Date}                               xpath=//android.widget.TextView[@text="Select Date"]
${Specific_Date}                             xpath=//android.widget.TextView[@text="27"]
${Search_Train}                              xpath=//android.widget.Button[@text="SEARCH TRAINS"]

${Modify}                                    xpath=//android.widget.Button[@text="Modify"]
${Modified_To_Select_Station}                xpath=//android.widget.TextView[@text="Ashuganj"]
${Modified_Search_Station}                   xpath=//android.widget.EditText
${Modified_To_Station}                       xpath=//android.widget.ListView/android.view.View

${Book_Now}                                  xpath=(//android.widget.Button[@text="BOOK NOW"])[1]
${Available_Coach}                           xpath=//android.widget.Button[@text="JHA"]
${Available_Seat}                            xpath=//android.widget.Button[@text="JHA-60"]
${Continue_Purchase}                         xpath=//android.widget.Button[@text="CONTINUE PURCHASE"]



###############################################  User Variable  ###############################################
${Input_From_Station}                                     Dhaka
${Input_To_Station}                                       Ashuganj
${Modified_Input_To_Station}                              Brahmanbaria



##################### Test Case 1 #####################
*** Keywords ***   
 
Click on Disclimer I Agree
    Wait Until Element Is visible               ${I_Agree}
    Click Element                               ${I_Agree}
Click on From Select Station
    Wait Until Element Is visible               ${From_Select_Station}
    Click Element                               ${From_Select_Station}
Click on From Search Station Input From Station
    Sleep                                       1s
    Click Element                               ${Search_Station}
    Wait Until Element Is visible               ${Search_Station}
    Input Text         ${Search_Station}        ${Input_From_Station}
Click on From Station
    Click Element                               ${From_Station}
Click on To Select Station
    Wait Until Element Is visible               ${To_Select_Station}
    Click Element                               ${To_Select_Station}
Click on To Search Station Input To Station
    Sleep                                       1s
    Click Element                               ${Search_Station}
    Wait Until Element Is visible               ${Search_Station}
    Input Text         ${Search_Station}        ${Input_To_Station}
Click on To Station
    Click Element                               ${To_Station}
Click on Select Class
    Click Element                               ${Select_Class}
Click on a specific Class
    Wait Until Element Is visible               ${Specific_Class}
    Click Element                               ${Specific_Class}
Click on Select Journey Date
    Wait Until Element Is visible               ${Select_Date}
    Click Element                               ${Select_Date}
Click on a specific Date
    Wait Until Element Is visible               ${Specific_Date}
    Click Element                               ${Specific_Date}
Click on Search Trains
    Wait Until Element Is visible               ${Search_Train}
    Click Element                               ${Search_Train}
    Sleep                                       3s


##################### Test Case 2 #####################
Click on Modify
    Wait Until Element Is visible               ${Modify}
    Click Element                               ${Modify}
Click on Modify To Select Station
    Wait Until Element Is visible               ${Modified_To_Select_Station}
    Click Element                               ${Modified_To_Select_Station}
Click on Modify To Search Station Input To Station
    Sleep                                       1s
    Click Element                               ${Modified_Search_Station}
    Wait Until Element Is visible               ${Modified_Search_Station}
    Input Text         ${Modified_Search_Station}        ${Modified_Input_To_Station}
Click on Modify To Station
    Wait Until Element Is visible               ${Modified_To_Station}
    Click Element                               ${Modified_To_Station}


##################### Test Case 3 #####################
Click on Book Now
    Wait Until Element Is visible               ${Book_Now}
    Click Element                               ${Book_Now}
Click on Available Coach
    Wait Until Element Is visible               ${Available_Coach}
    Click Element                               ${Available_Coach}
Click on Available Seat
    FOR    ${index}    IN RANGE    10
        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Available_Seat}
        Exit For Loop If    ${is_visible}
        Swipe    500    1500    500    500
        Sleep    2s
    END
    Click Element    ${Available_Seat}
Click on Continue Purchase
    Wait Until Element Is visible               ${Continue_Purchase}
    Click Element                               ${Continue_Purchase}

