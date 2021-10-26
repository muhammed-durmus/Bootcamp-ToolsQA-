*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../resources/utils/utils.robot

*** Keywords ***

create session
    open browser    about:blank    chrome
    maximize browser window

go to form page
    go to    https://demoqa.com/automation-practice-form

verify the form page
    wait until page contains element    css=.main-header
    wait until page contains    Practice Form
    wait until page contains    Student Registration Form


enter the inputs
    ${name}=    fakerlibrary.first_name
    ${surname}=    fakerlibrary.last_name
    ${e-mail}=    fakerlibrary.email
    utils.input    id=firstName    ${name}
    utils.input    id=lastName    ${surname}
    utils.input    id=userEmail    ${e-mail}

chose gender
    double click element    id=gender-radio-1

enter phone number
    ${phoneNumber}=    fakerlibrary.Phone Number
    utils.input    css=input#userNumber    ${phoneNumber}

enter date of birth
    ${birthDate}=    fakerlibrary.Date Of Birth
    input text    id=dateOfBirthInput    ${birthDate}

enter subject
   input text    css=div#subjectsContainer    Test Engineering Bootcamp

enter the address
    ${address}=    fakerlibrary.Address
    input text    css=textarea#currentAddress    ${address}

select the state
    click element    css=div#state .css-1uccc91-singleValue
    sleep    5s
    click element    css=#state [class=' css-1uccc91-singleValue']