# REImageSprite

CSS-like image sprites for iOS apps. You specify sprite frames in corresponding plist files.

![Screenshot of REImageSprite](https://github.com/romaonthego/REImageSprite/raw/master/Screenshot.png "REImageSprite Screenshot")

## Requirements
* Xcode 4.5 or higher
* Apple LLVM compiler
* iOS 5.0 or higher
* ARC

## Demo

Build and run the `REImageSpriteExample` project in Xcode to see `REImageSprite` in action.

## Installation

### via CocoaPods

The recommended approach for installating REImageSprite is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Edit your Podfile and add REImageSprite:

``` bash
$ edit Podfile
platform :ios, '5.0'
pod 'REImageSprite', '~> 1.0'
```

Install into your Xcode project:

``` bash
$ pod install
```

### Simple Install

All you need to do is drop `REImageSprite` files into your project, and add `#include "UIImage+REImageSprite.h"` to the top of classes that will use it.

## Example Usage

REImageSprite is a simple `UIImage` category, there's only one task where you specify resource name and sprite (which is essentially a `plist` file and a corresponding image name):

``` objective-c
+ (UIImage *)imageNamed:(NSString *)name fromSprite:(NSString *)sprite
```

Real life example:

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
