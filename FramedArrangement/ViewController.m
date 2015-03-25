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

    // This set of commands will trim the frame at the top
    // Using it, I can set specific boundaries for the mainFrame
    /*
    self.width = CGRectGetWidth(self.view.bounds);
    self.height = CGRectGetHeight(self.view.bounds) - 20.0;
    self.mainFrame = CGRectMake(0.0, 20.0, self.width, self.height);
     */

    // This pair of commands will also trim the mainFrame
    // But it does it as a whole
    self.mainFrame = self.view.bounds;
    self.mainFrame = CGRectInset(self.mainFrame, 10, 10);
    
//    self.redView = [[UIView alloc] initWithFrame:self.part1];
//    self.redView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:self.redView];
    
//    self.blueView = [UIView new];
//    self.blueView = [[UIView alloc] initWithFrame:self.part2];
//    self.blueView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:self.blueView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    
    // TODO: How do I make all of these happen in a loop?
    //[self layoutSquares];
    [self layoutHorizontalRectangles];
    //[self layoutVerticalRectangles];
    //[self layoutDiagonalSquares];

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
    
    CGRect part1;
    CGRect part2;
    CGRect part3;
    CGRect part4;
    
    CGFloat height = self.mainFrame.size.height / 4.0;
    
    CGRectDivide(self.mainFrame, &part1, &_mainFrame, height, CGRectMaxYEdge);
    self.redView = [[UIView alloc] initWithFrame:part1];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];

    CGRectDivide(_mainFrame, &part2, &_mainFrame, height, CGRectMaxYEdge);
    self.blueView = [[UIView alloc] initWithFrame:part2];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    CGRectDivide(_mainFrame, &part3, &_mainFrame, height, CGRectMaxYEdge);
    self.greenView = [[UIView alloc] initWithFrame:part3];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    CGRectDivide(_mainFrame, &part4, &_mainFrame, height, CGRectMaxYEdge);
    self.yellowView = [[UIView alloc] initWithFrame:part4];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
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
