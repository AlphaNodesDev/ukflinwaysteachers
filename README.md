<h1 align="center">Welcome to Project LinWays Teachers 👋</h1>


Example of `config.xml` with good meta data:

```xml
<?xml version='1.0' encoding='utf-8'?>
<widget id="com.linways.teacher" version="1.0.0" xmlns="http://www.w3.org/ns/widgets" ">
    <name>LinwaysTeachers</name>
    <description>Electrex Team Ukf</description>
    <author email="alphanodesdev.dev@gmail.com" >
        Electrex Team Ukf
    </author>
    <content src="index.html" />
    <allow-intent href="http://*/*" />
    <allow-intent href="https://*/*" />
<allow-navigation href="https://ukf.linways.com/" />



    <icon src="res/screen/android/logo.png" />
    <platform name="android">
        <preference name="StatusBarBackgroundColor" value="#972d66" />
        <preference name="AndroidWindowSplashScreenAnimatedIcon" value="res/screen/android/splash.png" />
        <preference name="SplashScreen" value="res/screen/android/splash.png" />
        <preference name="AutoHideSplashScreen" value="true" />
        <preference name="SplashScreenDelay" value="3000" />
  
 <preference name="KeyboardScrolling" value="false" />

    </platform>
<config-file target="AndroidManifest.xml" parent="/*" xmlns:android="http://schemas.android.com/apk/res/android">
 <uses-permission android:name="android.permission.CAMERA" />


</config-file>
</widget>

```

## 🚀 Usage

Make sure you have [npx](https://www.npmjs.com/package/npx) installed (`npx` is shipped by default since npm `5.2.0`)

Just use the following plugins:

```sh
plugin-android-permissions
plugin-app-version
plugin-camera
plugin-inappbrowser
plugin-permission
```


## Show your support

Please ⭐️ this repository if this project helped you!


## 📝 License

Copyright © 2023 [AlphaNodesDevl](https://github.com/AlphaNodesDev).<br />


---

_This Project was Created with ❤️ by [AlphaNodesDev](https://github.com/AlphaNodesDev)_
