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
    
    UIImageView *vimImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"vim"]];
    [scrollView addSubview:vimImageView];
    [vimImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.top.equalTo(scrollView).offset(20);
        make.right.equalTo(scrollView).offset(-20);
    }];
    
    UILabel *label = [UILabel new];
    label.numberOfLines = 0;
    label.text = @"label some label\n label some label";
    [scrollView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(vimImageView.mas_bottom).offset(8);
        make.centerX.equalTo(vimImageView);
    }];
    
    UIImageView *githubImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"github"]];
    [scrollView addSubview:githubImageView];
    [githubImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(label.mas_bottom).offset(8);
        make.centerX.equalTo(vimImageView);
        make.bottom.equalTo(scrollView).offset(-20);
    }];
}

@end
