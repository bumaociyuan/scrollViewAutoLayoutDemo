//
//  CodeAutoLayoutViewController.m
//  scrollViewDemo
//
//  Created by zx on 1/9/15.
//  Copyright (c) 2015 zx. All rights reserved.
//

#import "CodeAutoLayoutViewController.h"
#import "Masonry.h"

@interface CodeAutoLayoutViewController ()

@end

@implementation CodeAutoLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIScrollView *scrollView = [UIScrollView new];
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    UILabel *label = [UILabel new];
    label.numberOfLines = 0;
    label.text = @"label some label\n label some label";
    [scrollView addSubview:label];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView).insets(UIEdgeInsetsMake(50, 50, 5, 5));
    }];
}

@end
