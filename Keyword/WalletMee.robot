*** Settings ***
Library    AppiumLibrary
Resource   ../Keyword/Action.robot
Resource   ../Keyword/login.robot
Resource   ../Keyword/Permission.robot
Resource   ../Keyword/View.robot


*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    Android
${base}   C:\\Users\\Neversitup\\Desktop\\
${app}    ${base}Piggipo.apk
${appium:deviceName}    R5CT52H8G6Y
${appium:automationName}    UiAutomator2


*** Keywords ***
Open App
	Open Application    ${REMOTE_URL}   
    ...  platformName=${platformName}  
    ...  appium:app=${app}  
	...  appium:deviceName=${appium:deviceName}  
	...  appium:automationName=${appium:automationName} 
Login gmail
	login.Sign in with Google

Accept condition
    Permission.Accept

Allow permission
    Permission.allow permission
   
Into main page
    Permission.main page

Create Mee Wallet
    Action.Add Mee Wallet

ผู้ใช้งานอยู่หน้า Mee Wallet
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imv_close_page
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvDone

Add Salary
    
    Action.Add Income 
     # 42500 Bath
    Click Element    id=com.neversitup.piggipogo:id/key_four
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_two
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_five
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_zero
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_zero
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/close_keyboard
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice

    # Add Category
    Click Element    id=com.neversitup.piggipogo:id/txtCategory
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/listCategory
    Click Element    xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView

     # Regular Income
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutSubCategory
    Click Element   xpath=//android.widget.LinearLayout[3]/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.FrameLayout
    
    # 2Month
    Wait Until Element Is Visible    id=android:id/alertTitle
    Click Element    xpath=//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutSubCategory

    # Apprvoe
    Action.Approve

# Add Extra Income
#     Action.Add Income 
#     # 2500 Bath
#     Click Element    id=com.neversitup.piggipogo:id/key_two
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
#     Click Element    id=com.neversitup.piggipogo:id/key_five
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
#     Click Element    id=com.neversitup.piggipogo:id/key_zero
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
#     Click Element    id=com.neversitup.piggipogo:id/key_zero
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
#     Click Element    id=com.neversitup.piggipogo:id/close_keyboard
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice

#     # Add Category
#     Click Element    id=com.neversitup.piggipogo:id/txtCategory
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/listCategory
#     Click Element    xpath=//android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView

#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtTransDesc
#     Click Element    id=com.neversitup.piggipogo:id/edtTransDesc
#     Input Text  id=com.neversitup.piggipogo:id/edtWalletName     รายได้เสริมจากการขายของ
#     Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutSubCategory

#     # Apprvoe
#     Action.Approve

Add Shopping
    Action.Add Expense 
    # 3500 Bath
    Click Element    id=com.neversitup.piggipogo:id/key_three
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_five
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/key_zero
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice
    Click Element    id=com.neversitup.piggipogo:id/close_keyboard
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edtPrice

    # Add Category
    Click Element    id=com.neversitup.piggipogo:id/txtCategory
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/gridView
    Click Element    xpath=//android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView

   # Regular 
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutSubCategory
    Click Element   xpath=//android.widget.LinearLayout[3]/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.FrameLayout

    # 1Month
    Wait Until Element Is Visible    id=android:id/alertTitle
    Click Element    xpath=//android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/layoutSubCategory

    # Apprvoe
    Action.Approve

Show Graph
    View.View Graph

Show Transaction
    View.View Transaction

Show Calendar
    View.View Calendar Right
    View.View Calendar Left
    
Clear Transaction
    Action.Delete Transaction

Delete Mee Wallet
    Action.Delete Wallet







    











