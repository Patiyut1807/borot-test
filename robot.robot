*** Settings ***
Library               RequestsLibrary
# *** Variables ***
# *** Keywords ***
*** Test Cases ***
Quick Get Request Test
    ${response}=    GET  http://localhost:5000/is_prime/13
    Should Be Equal  ${response.status_code}  ${200}
    Should Be Equal  ${response.text}  true