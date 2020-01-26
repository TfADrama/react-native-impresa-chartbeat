# react-native-impresa-chartbeat

## Getting started

`$ npm install react-native-impresa-chartbeat --save`

### Mostly automatic installation

`$ react-native link react-native-impresa-chartbeat`
`cd ios/`
`pod install`


### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-impresa-chartbeat` and add `RNImpresaChartbeat.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNImpresaChartbeat.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RNImpresaChartbeatPackage;` to the imports at the top of the file
  - Add `new RNImpresaChartbeatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-impresa-chartbeat'
  	project(':react-native-impresa-chartbeat').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-impresa-chartbeat/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-impresa-chartbeat')
  	```


## Usage
```javascript
import RNImpresaChartbeat from 'react-native-impresa-chartbeat';

// TODO: What to do with the module?
RNImpresaChartbeat;
```
  
