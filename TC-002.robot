*** Settings ***
Library    SikuliXLibrary

*** Test Cases ***
DisconnectFromVideoCall
    Open Application    Zoom    # Open the Zoom application
    Maximize Window    Zoom
    Wait Until Page Contains Image    disconnect_button.png    # Wait for the disconnect button to be visible
    Click Image    disconnect_button.png    # Click on the disconnect button
    Close Application    Zoom    # Close the Zoom application
