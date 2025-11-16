*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
Setting counter value to 10 works
    Go To  ${HOME_URL}
    Input Text  name=value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

Setting counter value to 100 works
    Go To  ${HOME_URL}
    Input Text  name=value  100
    Click Button  aseta
    Page Should Contain  nappia painettu 100 kertaa

Setting counter value to 0 works
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Input Text  name=value  0
    Click Button  aseta
    Page Should Contain  nappia painettu 0 kertaa
