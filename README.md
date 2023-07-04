[![npm version](https://badge.fury.io/js/cordova-plugin-swift-support.svg)](https://badge.fury.io/js/cordova-plugin-swift-support) [![Build Status](https://travis-ci.org/akofman/cordova-plugin-swift-support.svg?branch=master)](https://travis-ci.org/akofman/cordova-plugin-swift-support) [![npm](https://img.shields.io/npm/dm/cordova-plugin-swift-support.svg)]()

  

# cordova-plugin-swift-support

  

![swift-128x128](https://cloud.githubusercontent.com/assets/579922/15999501/79196b48-3146-11e6-836e-061a7ef53571.png)

  

This [Cordova plugin](https://www.npmjs.com/package/cordova-plugin-swift-support) adds Swift support to your iOS project.

Based on the [cordova-plugin-add-swift-support](https://github.com/akofman/cordova-plugin-add-swift-support) project.
Defines a CordovaPlugin class that facilitate Callback usage :
* success method for success callbacks
* error method for error callbacks

The CordovaPlugin class should be used to create a plugin instead of the CDVPlugin class.


  

## Installation

  

You can add this plugin directly to your project:

  

`cordova plugin add cordova-plugin-swift-support --save`

  

Or add it as a dependency into your own plugin:

  

`<dependency id="cordova-plugin-swift-support" version="1.0.0"/>`

  

By default, the Swift 4 support is added but the legacy version (2.3) can still be configured as a preference, inside the project's `config.xml`, within the `<platform name="ios">` section:

  

`<preference name="UseLegacySwiftLanguageVersion" value="true" />`

  

Or it is possible to specify the version as following, inside the project's `config.xml`, within the `<platform name="ios">` section:

  

`<preference name="UseSwiftLanguageVersion" value="5" />`

  

If needed, add a prefixed Bridging-Header file in your plugin in order to import frameworks (MyPlugin-Bridging-Header.h for instance).

As an example you can have a look at this [plugin](https://github.com/akofman/cordova-plugin-permissionScope).

  

If the `cordova-plugin-swift-support` plugin is already installed to your project, then you can add your own Swift plugin as usual, its prefixed Bridging-Header will be automatically found and merged.

  

## Contributing

  

The src folder contains ECMAScript 2015 source files, the minimum Node.js version is `6` (Boron).

  

## License

  

MIT