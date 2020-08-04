*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/tools2.robot

*** Variables ***
${EMAIL}    pitchayanan.rat@pantavanij.com    #Email is wrong: pitchayanan.rat@pantavani.com  

*** Test Cases ***
Login AscendTR
    Open Browser    https://www.ascendtravel.com/    chrome
    Click Button    //button[@class="icon-close2 button"]
    Click Button    id=landing-btn-getstarted
    AscendTV Input Email    ${EMAIL} 
    tools2.Click continue 
    ${status}=    Verify Password
    Run Keyword If    ${status}==${True}    Run Keywords
    ...             tools2.AscendTV Input Password    Sue@May19
    ...     AND     tools2.Click login 
    ...     ELSE    tools2.Register Page  โรงแรม  ABCD  Smart  0882312939  AAAAAAAA   Uruguay    LoremIpsum  

    