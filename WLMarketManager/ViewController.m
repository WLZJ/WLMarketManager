//
//  ViewController.m
//  WLMarketManager
//
//  Created by yuyu on 2019/2/19.
//  Copyright © 2019年 FanLai. All rights reserved.
//

#import "ViewController.h"
#import "WLMarketDefine.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor orangeColor];
    view.frame = __kCGRectMake(100, 100, 80, 80);
    [self.view addSubview:view];
    
}


@end
