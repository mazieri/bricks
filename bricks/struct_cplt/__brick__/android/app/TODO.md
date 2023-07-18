<!-- TODO: here is where you paste/drag the google-services.json-->
<!-- TODO: configure android/app/build.gradle  -->

# Steps

1. need com.example.example configurated in Firebase
2. Need to add code in build.gradle
3. Please, replace the "x.x.x" to the actual version
4. Please, update the minSdkVersion

```groovy
...
def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0'
}

apply plugin: 'com.android.application'
apply plugin: 'com.google.gms.google-services'
...

...
defaultConfig {
        applicationId "com.example.example"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion 19
...
```

## If need more help, here some links

- [maven/buil script config](https://firebase.google.com/docs/android/troubleshooting-faq?hl=pt-br#add-plugins-using-buildscript-syntax)
- [firebase config](https://firebase.google.com/docs/android/setup?hl=pt-br#add-config-file)

## DELETE ME(this file) AFTER DONE ALL
