*** Settings ***
Library    AppiumLibrary

*** Keywords ***
View Graph
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvGraph
    Click Element    id=com.neversitup.piggipogo:id/imvGraph
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/item_layout

View Transaction
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvTransaction
    Click Element    id=com.neversitup.piggipogo:id/imvTransaction
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/transactionList

View Calendar Right
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnRight
    Click Element    id=com.neversitup.piggipogo:id/btnRight
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvCurrentMonth

View Calendar Left
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnLeft
    Click Element    id=com.neversitup.piggipogo:id/btnLeft
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvCurrentMonth

View Wallet Page
    # Click back to Wallet page
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imv_close_page
    Click Element    id=com.neversitup.piggipogo:id/imv_close_page
	Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutWalletIndicator

View Edit Wallet
    # Click into Page Edit
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvDone
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    # Back to Page mee Wallet
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imv_close_page
    Click Element    id=com.neversitup.piggipogo:id/imv_close_page
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvDone
