//
//  ViewController.m
//  LYAlertView
//
//  Created by 001s on 2018/6/9.
//  Copyright © 2018年 LyongY. All rights reserved.
//

#import "ViewController.h"
#import "LYAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated {
    LYAlertView.new
    .addTitle(@"Title")
    .addTitle(@"YYYYYYYY")
    .addTitle(@"UIUIUIUIUI")
    .addTitle(@"R")
    .addToWindow();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
