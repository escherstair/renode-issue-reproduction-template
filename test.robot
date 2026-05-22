*** Variables ***
${SCRIPT}                     ${CURDIR}/test.resc
${UART}                       sysbus.usart3

*** Keywords ***
Load Script
    Execute Script            ${SCRIPT}
    Create Terminal Tester    ${UART}

*** Test Cases ***
Should Run Test Case
    Load Script
    Start Emulation
    
    Register Failing Uart String    BARE METAL FATAL ERROR

    Wait For Line On Uart       Welcome to STM32 world !
