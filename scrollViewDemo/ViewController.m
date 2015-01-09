//
//  ViewController.m
//  scrollViewDemo
//
//  Created by zx on 1/9/15.
//  Copyright (c) 2015 zx. All rights reserved.
//

#import "ViewController.h"
#import "CodeAutoLayoutViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)pushCodeAutoLayoutViewController:(id)sender {
    CodeAutoLayoutViewController *vc = [CodeAutoLayoutViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
