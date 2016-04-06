//
//  WJViewController4.m
//  UITabBar_Test
//
//  Created by 曾维俊 on 16/4/5.
//  Copyright © 2016年 曾维俊. All rights reserved.
//

#import "WJViewController4.h"
#import "UITabBar+WJBadgeValue.h"

@interface WJViewController4 ()

@end

@implementation WJViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.tabBarController.tabBar showBadgeOnItemIndex:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
