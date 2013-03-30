//
// UIImage+REImageSprite.m
// REImageSprite
//
// Copyright (c) 2013 Roman Efimov (https://github.com/romaonthego)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "UIImage+REImageSprite.h"
#import "REImageSpriteCache.h"

@implementation UIImage (REImageSprite)

+ (UIImage *)imageNamed:(NSString *)name fromSprite:(NSString *)sprite
{
    NSArray *components;
    UIImage *spriteImage;
    
    if (![[REImageSpriteCache sharedCache].dictionary objectForKey:sprite]) {
        NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:sprite ofType:@"plist"]];
        components = [[[dictionary objectForKey:name] stringByReplacingOccurrencesOfString:@" " withString:@""] componentsSeparatedByString:@","];
        spriteImage = [UIImage imageNamed:sprite];
        [[REImageSpriteCache sharedCache].dictionary setObject:@{@"array": components, @"image": spriteImage} forKey:[NSString stringWithFormat:@"%@/%@", name, sprite]];
    } else {
        NSDictionary *info = [[REImageSpriteCache sharedCache].dictionary objectForKey:[NSString stringWithFormat:@"%@/%@", name, sprite]];
        components = [info objectForKey:@"array"];
        spriteImage = [info objectForKey:@"image"];
    }
    
    CGImageRef cgIcon = CGImageCreateWithImageInRect(spriteImage.CGImage, CGRectMake([[components objectAtIndex:0] integerValue] * [UIScreen mainScreen].scale,
                                                                                     [[components objectAtIndex:1] integerValue] * [UIScreen mainScreen].scale,
                                                                                     [[components objectAtIndex:2] integerValue] * [UIScreen mainScreen].scale,
                                                                                     [[components objectAtIndex:3] integerValue] * [UIScreen mainScreen].scale));
    UIImage *icon = [UIImage imageWithCGImage:cgIcon scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUp];
    CGImageRelease(cgIcon);
    return icon;
}

@end
