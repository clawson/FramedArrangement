//
//  ViewController.h
//  FramedArrangement
//
//  Created by Dan Clawson on 3/22/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) CGRect mainFrame;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *yellowView;

@end

