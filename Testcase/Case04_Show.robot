*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Resource   ../Keyword/Action.robot
Resource   ../Keyword/login.robot
Resource   ../Keyword/Permission.robot
Resource   ../Keyword/View.robot
Resource   ../Keyword/WalletMee.robot

*** Test Cases ***
ตรวจสอบการแสดงผล
    Show Graph
    Show Transaction
    Show Calendar

