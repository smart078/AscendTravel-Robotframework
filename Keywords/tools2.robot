*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary
Resource    ../Keywords/tools.robot

*** Keywords ***
AscendTV Input Email 
    [Arguments]    ${data}
    Wait until and input text    name=email     ${data}

AscendTV Input Password 
    [Arguments]    ${data}
    Wait until and input text    id=landing-inp-password-login     ${data}

Verify Password
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    id=landing-inp-password-login
    [Return]    ${status}

Click login
    tools.Wait until and Click Element  id=landing-btn-login

Register Page
    [Arguments]    ${contactType}    ${company}    ${contact}    ${phone}    ${line}    ${country}    ${other}
    tools.Wait until and Click Element  //div[@class="form-check" and label[contains(.,'${contactType}')]]//input
    tools.Wait until and input text  id=join-us-company-name-input  ${company}
    tools.Wait until and input text  id=join-us-contact-name-input    ${contact} 
    tools.Wait until and input text  id=join-us-phone-number-input  ${phone} 
    tools.Wait until and input text  id=join-us-line-id-input  ${line}
    tools.Wait until and Click Element  //a[@class="dropdown"]
    tools.Wait until and Click Element  //a[contains(.,'${country}')]
    tools.Wait until and input text  id=join-us-addition-info-input  ${other}

Click continue
    tools.Wait until and Click Element  id=landing-btn-email-verify-domain