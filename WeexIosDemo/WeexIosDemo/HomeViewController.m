//
//  HomeViewController.m
//  WeexIosDemo
//
//  Created by zhouyu on 2018/11/23.
//  Copyright © 2018年 zhouyu. All rights reserved.
/*
 weex支持全页面以及页面局部两种不同的渲染模式。在iOS中使用方法很简单，只需要将weex渲染所得的view添加到父容器中即可。下面会介绍如何在iOS最常用的容器viewController中渲染weex页面
 */

#import "HomeViewController.h"
#import <WeexSDK/WXSDKInstance.h>

@interface HomeViewController ()
@property (nonatomic, strong) WXSDKInstance * instance;
@property (nonatomic, strong) UIView * weexView;
@property (nonatomic, strong) NSURL * url;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.instance = [[WXSDKInstance alloc] init];
    self.instance.viewController = self;
    self.instance.frame = self.view.frame;
    
    __weak typeof(self) weakSelf = self;
    
    self.instance.onCreate = ^(UIView *view) {
        [weakSelf.weexView removeFromSuperview];
        weakSelf.view = view;
        [weakSelf.view addSubview:weakSelf.weexView];
        weakSelf.weexView.backgroundColor = [UIColor whiteColor];
        weakSelf.view.backgroundColor = [UIColor whiteColor];
    };
    
    self.instance.onFailed = ^(NSError *error) {
        //process failure
    };
    
    self.instance.renderFinish = ^ (UIView *view) {
        //process renderFinish
    };
    
    self.url = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"js"];
    [_instance renderWithURL:self.url];
    
}

- (void)dealloc {
    [_instance destroyInstance];
}

@end
