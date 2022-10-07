*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Resource   ../Keyword/Action.robot
Resource   ../Keyword/login.robot
Resource   ../Keyword/Permission.robot
Resource   ../Keyword/View.robot
Resource   ../Keyword/WalletMee.robot

*** Test Cases ***
Customer Login
	Open app
	Login gmail
	Accept condition
	Permission.allow permission
Create Wallet
	Into main page
	Create Mee Wallet
Into Mee Wallet
	ผู้ใช้งานอยู่หน้า Mee Wallet




	



    
