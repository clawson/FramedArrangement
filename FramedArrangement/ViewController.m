//
//  ViewController.m
//  FramedArrangement
//
//  Created by Dan Clawson on 3/22/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // TODO: Is there a way to do this in a loop?
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    
    // TODO: How do I make all of these happen in a loop?
    [self layoutSquares];
    [self layoutHorizontalRectangles];
    [self layoutVerticalRectangles];
    [self layoutDiagonalSquares];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutSquares {
    
    CGFloat width = CGRectGetWidth(self.view.bounds) / 2.0;
    CGFloat height = CGRectGetHeight(self.view.bounds) / 2.0;
    
    self.redView.frame = CGRectMake(0.0, 0.0, width, height);
    self.blueView.frame = CGRectMake(width, 0.0, width, height);
    self.greenView.frame = CGRectMake(0.0, height, width, height);
    self.yellowView.frame = CGRectMake(width, height, width, height);
    
}

- (void) layoutHorizontalRectangles {
    
    CGFloat width = CGRectGetWidth(self.view.bounds);
    CGFloat height = CGRectGetHeight(self.view.bounds) / 4.0;
    
    self.redView.frame = CGRectMake(0.0, 0.0, width, height);
    self.blueView.frame = CGRectMake(0.0, height, width, height);
    self.greenView.frame = CGRectMake(0.0, height * 2, width, height);
    self.yellowView.frame = CGRectMake(0.0, height * 3, width, height);
    
}

- (void) layoutVerticalRectangles {
    
    CGFloat width = CGRectGetWidth(self.view.bounds) / 4.0;
    CGFloat height = CGRectGetHeight(self.view.bounds);
    
    self.redView.frame = CGRectMake(0.0, 0.0, width, height);
    self.blueView.frame = CGRectMake(width, 0.0, width, height);
    self.greenView.frame = CGRectMake(width * 2, 0.0, width, height);
    self.yellowView.frame = CGRectMake(width * 3, 0.0, width, height);
    
}

- (void) layoutDiagonalSquares {
    
    CGFloat width = CGRectGetWidth(self.view.bounds) / 4.0;
    CGFloat height = CGRectGetHeight(self.view.bounds) / 4.0;
    
    self.redView.frame = CGRectMake(0.0, 0.0, width, height);
    self.blueView.frame = CGRectMake(width, height, width, height);
    self.greenView.frame = CGRectMake(width * 2, height * 2, width, height);
    self.yellowView.frame  = CGRectMake(width * 3, height * 3, width, height);
    
}

@end
