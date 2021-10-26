*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
create session
    set selenium speed    8.5 seconds
    open browser    about:blank    ${BROWSER}
    maximize browser window

close session
  close browser