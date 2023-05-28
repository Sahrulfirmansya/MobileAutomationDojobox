***Settings***
Library                         AppiumLibrary

***Variables***
${REMOTE_URL}                   http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                Android
${PLATFORM_VERSION}             13.0
${DEVICE_NAME}                  emulator-5554
${ACTIVITY_NAME}                com.example.myapplication.MainActivity
${PACKAGE_NAME}                 com.example.myapplication
${id}                           support@ngendigital.com
${password}                     abc123
${flight_number}                DA935

***Keywords***
User login with valid username and valid password
    Open Application    ${REMOTE_URL}
            ...         platformName=${PLATFORM_NAME}
            ...         platformVersion=${PLATFORM_VERSION}
            ...         deviceName=${DEVICE_NAME}
            ...         automationName=UiAutomator2
            ...         newCommandTimeout=2500
            ...         appActivity=${ACTIVITY_NAME}
            ...         appPackage=${PACKAGE_NAME}
    click element       id=com.example.myapplication:id/login
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[1]             ${id}
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[2]             ${password}
    click element       id=com.example.myapplication:id/signIn

User can book a flight from new york to london, one way path
    Open Application    ${REMOTE_URL}
            ...         platformName=${PLATFORM_NAME}
            ...         platformVersion=${PLATFORM_VERSION}
            ...         deviceName=${DEVICE_NAME}
            ...         automationName=UiAutomator2
            ...         newCommandTimeout=2500
            ...         appActivity=${ACTIVITY_NAME}
            ...         appPackage=${PACKAGE_NAME}
    click element       id=com.example.myapplication:id/login
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[1]             ${id}
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[2]             ${password}
    click element       id=com.example.myapplication:id/signIn
    sleep               5s
    click element       id=com.example.myapplication:id/book
    sleep               5s
    click element       id=com.example.myapplication:id/spinnerFrom
    sleep               3s
    click element       xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
    sleep               3s
    click element       id=com.example.myapplication:id/spinnerTo
    sleep               3s
    click element       xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
    sleep               3s
    click element       id=com.example.myapplication:id/textStartDate
    sleep               3s
    click element       xpath=//android.view.View[@content-desc="01 August 2019"]
    click element       id=android:id/button1
    click element       id=com.example.myapplication:id/textEndDate
    click element       xpath=//android.view.View[@content-desc="02 August 2019"]
    click element       id=android:id/button1
    click element       id=com.example.myapplication:id/radioButtonFlight
    click element       id=com.example.myapplication:id/book_flight
    click element       id=com.example.myapplication:id/price1
    click element       id=com.example.myapplication:id/confirm_order
    sleep               3s
    Text Should Be Visible  Your flight is booked. Reservation number is CADX2214

User can search flight number, in search menu
    Open Application    ${REMOTE_URL}
            ...         platformName=${PLATFORM_NAME}
            ...         platformVersion=${PLATFORM_VERSION}
            ...         deviceName=${DEVICE_NAME}
            ...         automationName=UiAutomator2
            ...         newCommandTimeout=2500
            ...         appActivity=${ACTIVITY_NAME}
            ...         appPackage=${PACKAGE_NAME}
    click element       id=com.example.myapplication:id/login
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[1]             ${id}
    input text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[2]             ${password}
    click element       id=com.example.myapplication:id/signIn
    sleep               10s
    click element       id=com.example.myapplication:id/search_flight
    sleep               10s
    input text          id=com.example.myapplication:id/flight_number                                                                                                                                                                                                       ${flight_number}
    click element       id=com.example.myapplication:id/searchFlight


***Test Cases***
Example Test Cases
    User login with valid username and valid password
    User can book a flight from new york to london, one way path
    User can search flight number, in search menu
