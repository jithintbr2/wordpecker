# Template Project

## Getting Started

Steps:

1. change icons
    * android/app/src/main/res -> change icons
2. change Google service file
    * android/app/google-services.json -> change file
3. change Google key and App label
    * android/app/src/main/AndroidManifest.xml
        - (line 9) android:label="woodle" to android:label="your application name"
        - (line 15) android:value="AIzaSyCOtLm7D2gL6HoJ_s3jMTyT2kHzRZZSfx4" to android:value="new key"
4. Find and change applicationId :
    Example -> "com.woodle" to "com.delguys.user"
5. App Signature
    * android/key.properties -> change params
6. Customize
    * lib/core/settings/config.dart