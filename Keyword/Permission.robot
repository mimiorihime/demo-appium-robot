*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Accept
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnTermAccept
    Click Element    id=com.neversitup.piggipogo:id/btnTermAccept

allow permission
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/cb
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnPolicyAccept
    
    Click Element    id=com.neversitup.piggipogo:id/cb
    Click Element    id=com.neversitup.piggipogo:id/btnPolicyAccept

    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button

main page
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvAds
    Click Element    id=com.neversitup.piggipogo:id/imvAds
    
#######################



