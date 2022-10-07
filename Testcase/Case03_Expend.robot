*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Resource   ../Keyword/Action.robot
Resource   ../Keyword/login.robot
Resource   ../Keyword/Permission.robot
Resource   ../Keyword/View.robot
Resource   ../Keyword/WalletMee.robot

*** Test Cases ***
ผู้ใช้งานสร้าง Expense
    Add Shopping
    
