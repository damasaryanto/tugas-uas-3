*** Settings ***
Library           SeleniumLibrary

*** variables ***
${BROWSER}     chrome
${HOST}    http://localhost:8181/SPK-WP/index.php

*** Test Cases ***

buka web
    Open Browser    ${HOST}    ${BROWSER}
    Close Browser    

pindah ke navbar alternatif
    Open Browser    ${HOST}    ${BROWSER}
    Click Element    xpath://a[@href='alternatif.php']
    Close Browser

buka form tambah data alternatif
    Open Browser    ${HOST}    ${BROWSER}
    Click Element    xpath://a[@href='alternatif.php']
    Click Element    xpath://a[@href='add-alternatif.php']
    Close Browser    

tambah data alternatif
    Open Browser    ${HOST}    ${BROWSER}
    Click Element    xpath://a[@href='alternatif.php']
    Click Element    xpath://a[@href='add-alternatif.php']
    Input Text    id:alternatif    Herry
    Input Text    id:k1    80
    Input Text    id:k2    79
    Input Text    id:k3    86
    Input Text    id:k4    93
    Input Text    id:k5    97
    Submit Form
    Close Browser 

hapus data alternatif
    Open Browser    ${HOST}    ${BROWSER}
    Click Element    xpath://a[@href='alternatif.php']
    Click Element    xpath://a[@href='del.php?id=3']
    Sleep    3
    Close Browser 