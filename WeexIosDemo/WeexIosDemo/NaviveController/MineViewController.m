//
//  MineViewController.m
//  WeexIosDemo
//
//  Created by zhouyu on 2018/11/23.
//  Copyright © 2018年 zhouyu. All rights reserved.
//

#import "MineViewController.h"
#import <WeexSDK/WXSDKInstance.h>

@interface MineViewController ()
@property (nonatomic, strong) WXSDKInstance * instance;
@property (nonatomic, strong) UIView * weexView;
@property (nonatomic, strong) NSURL * url;
@end

@implementation MineViewController

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
    
    self.url = [[NSBundle mainBundle] URLForResource:@"mine" withExtension:@"js"];
    [_instance renderWithURL:self.url];
    
}

- (void)dealloc {
    [_instance destroyInstance];
}


@end
