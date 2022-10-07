*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Add Mee Wallet
    # Click Wallet button
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutWalletIndicator
    Click Element    id=com.neversitup.piggipogo:id/layoutWalletIndicator
    # Click Add Wallet
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/dashboard_add_card
    Click Element    id=com.neversitup.piggipogo:id/dashboard_add_card
    # Click Wallet Name
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtWalletName
    Click Element    id=com.neversitup.piggipogo:id/edtWalletName 
    # Create Wallete Name
    Input Text  id=com.neversitup.piggipogo:id/edtWalletName     Mee
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvDone
    Click Element    id=com.neversitup.piggipogo:id/imvDone
    # Select Mee Wallet
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvWalletName
    Click Element    id=com.neversitup.piggipogo:id/tvWalletName
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvAmountRemain

Add Income 
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvAdd
    Click Element    id=com.neversitup.piggipogo:id/imvAdd
    # Open Page Income
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layout
    Click Element    id=com.neversitup.piggipogo:id/layoutIncome
    Wait Until Element IS Visible    id=com.neversitup.piggipogo:id/txtCategory
    
Add Expense 
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvAdd
    Click Element    id=com.neversitup.piggipogo:id/imvAdd
    # Open Page Expense
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layout
    Click Element    id=com.neversitup.piggipogo:id/layoutExpense
    Wait Until Element IS Visible    id=com.neversitup.piggipogo:id/txtCategory

Approve
    Click Element    id=com.neversitup.piggipogo:id/imvApprove
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/transaction_price

Delete Transaction  
    # Edit	
    Click Element    id=com.neversitup.piggipogo:id/transaction_price
    Wait Until Element Is Visible   id=com.neversitup.piggipogo:id/edit
    Click Element    id=com.neversitup.piggipogo:id/edit

    # Delete
    Wait Until Element Is Visible   id=com.neversitup.piggipogo:id/transaction_remove
    Click Element    id=com.neversitup.piggipogo:id/transaction_remove

    # Confirm Delete
    Wait Until Element Is Visible   id=com.neversitup.piggipogo:id/btn_dialog_positive
    Click Element    id=com.neversitup.piggipogo:id/btn_dialog_positive
    Wait Until Element Is Visible   id=com.neversitup.piggipogo:id/tvAmountRemain

Delete Wallet
    # Edit (for delete)
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Click Element    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvIssue
    Click Element    id=com.neversitup.piggipogo:id/btn1

















