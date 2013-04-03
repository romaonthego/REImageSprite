# REImageSprite

CSS-like image sprites for iOS apps.

![Screenshot of REImageSprite](https://github.com/romaonthego/REImageSprite/raw/master/Screenshot.png "REImageSprite Screenshot")

REImageSprite is a simple `UIImage` category, there's only one task where you specify resource name and a sprite (which is essentially a `plist` file and a corresponding image file with the same name):

``` objective-c
+ (UIImage *)imageNamed:(NSString *)name fromSprite:(NSString *)sprite;
```

## Requirements
* Xcode 4.5 or higher
* Apple LLVM compiler
* iOS 5.0 or higher
* ARC

## Demo

Build and run the `REImageSpriteExample` project in Xcode to see `REImageSprite` in action.

## Installation

### CocoaPods

The recommended approach for installating `REImageSprite` is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.
For best results, it is recommended that you install via CocoaPods >= **0.15.2** using Git >= **1.8.0** installed via Homebrew.

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Change to the directory of your Xcode project:

``` bash
$ cd /path/to/MyProject
$ touch Podfile
$ edit Podfile
```

Edit your Podfile and add REImageSprite:

``` bash
platform :ios, '5.0'
pod 'REImageSprite', '~> 1.0'
```

Install into your Xcode project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file)

``` bash
$ open MyProject.xcworkspace
```

Please note that if your installation fails, it may be because you are installing with a version of Git lower than CocoaPods is expecting. Please ensure that you are running Git >= **1.8.0** by executing `git --version`. You can get a full picture of the installation details by executing `pod install --verbose`.

### Manual Install

All you need to do is drop `REImageSprite` files into your project, and add `#include "UIImage+REImageSprite.h"` to the top of classes that will use it.

## Example Usage

``` objective-c
UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 50, 50)];
[button setImage:[UIImage imageNamed:@"YouTube" fromSprite:@"Icons"] forState:UIControlStateNormal];
[button setImage:[UIImage imageNamed:@"YouTube_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
[self.view addSubview:button];
```

## Contact

Roman Efimov

- https://github.com/romaonthego
- https://twitter.com/romaonthego
- romefimov@gmail.com

## License

REImageSprite is available under the MIT license.

Copyright © 2013 Roman Efimov.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
