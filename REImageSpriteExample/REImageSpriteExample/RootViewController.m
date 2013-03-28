//
//  RootViewController.m
//  REImageSpriteExample
//
//  Created by Roman Efimov on 3/28/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "RootViewController.h"
#import "UIImage+REImageSprite.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button;
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 50, 50)];
    [button setImage:[UIImage imageNamed:@"YouTube" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"YouTube_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(130, 100, 50, 50)];
    [button setImage:[UIImage imageNamed:@"Facebook" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Facebook_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(230, 100, 50, 50)];
    [button setImage:[UIImage imageNamed:@"RSS" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"RSS_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(30, 250, 50, 50)];
    [button setImage:[UIImage imageNamed:@"Green" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Green_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(130, 250, 50, 50)];
    [button setImage:[UIImage imageNamed:@"Feedburner" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Feedburner_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(230, 250, 50, 50)];
    [button setImage:[UIImage imageNamed:@"Delicious" fromSprite:@"Icons"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Delicious_Highlighted" fromSprite:@"Icons"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
}

@end
