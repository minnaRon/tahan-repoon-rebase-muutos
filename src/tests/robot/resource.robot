*** Settings ***
Library  SeleniumLibrary
Library  ./AppLibrary.py

*** Variables ***
${SERVER}  localhost:5000
${BROWSER}  headlesschrome
${DELAY}  0 seconds
${HOME URL}  http://${SERVER}
${LOGIN URL}  http://${SERVER}/kirjautuminen
${REGISTER URL}  http://${SERVER}/rekisterointi
${LUKUVINKIT URL}  http://${SERVER}/lukuvinkit
${LOGOUT URL}  http://${SERVER}/kirjaudu_ulos

*** Keywords ***
Open And Configure Browser
    Open Browser  browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Main Page Should Be Open
    Title Should Be  Lukuvinkit-etusivu

Go To Main Page
    Go To  ${HOME URL}

Go To Register Page 
    Go To  ${REGISTER URL}

Go To Lukuvinkit Page
    Go To  ${LUKUVINKIT URL}

Register Page Should Be Open
    Title Should Be  Rekisteröinti

Lukuvinkit Page Should Be Open
    Title Should Be  Lukuvinkit

Logout
    Go To  ${LOGOUT URL}