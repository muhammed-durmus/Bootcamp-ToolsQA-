*** Settings ***
Documentation  Suite description
Resource    ./po/practiceForm.robot

*** Keywords ***

form test
    practiceForm.create session
    practiceForm.go to form page
    practiceForm.verify the form page
    practiceForm.enter the inputs
    practiceForm.chose gender
    practiceForm.enter phone number
    practiceForm.enter the address