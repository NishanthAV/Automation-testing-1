*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${ZOOM_URL}   https://zoom.us

*** Test Cases ***
DisconnectFromZoomMeeting
    Open Browser    ${ZOOM_URL}    ${BROWSER}
    Maximize Browser Window

    # Assuming you've already joined a meeting and the "Leave" button is visible
    Click Element    xpath=//button[contains(text(), 'Leave')]

    # Wait for the confirmation dialog to appear
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'zm-modal-dialog')]

    # Click on the "Leave Meeting" button in the confirmation dialog
    Click Element    xpath=//button[contains(text(), 'Leave Meeting')]

    # Wait for the meeting to be left
    Wait Until Element Is Visible    xpath=//div[contains(text(), 'You left the meeting')]

    # Close the browser
    Close Browser
