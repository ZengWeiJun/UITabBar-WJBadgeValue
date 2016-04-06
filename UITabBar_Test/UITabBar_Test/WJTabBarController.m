//
//  WJTabBarController.m
//  UITabBar_Test
//
//  Created by 曾维俊 on 16/4/5.
//  Copyright © 2016年 曾维俊. All rights reserved.
//

#import "WJTabBarController.h"
#import "WJViewController1.h"
#import "WJViewController2.h"
#import "WJViewController3.h"
#import "WJViewController4.h"
#import "UITabBar+WJBadgeValue.h"

@interface WJTabBarController ()

@end

@implementation WJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *nav1 = [self navForVcClass:[WJViewController1 class] titile:@"11111" image:@"tab_group" slImage:@"tab_group_press"];
    UINavigationController *nav2 = [self navForVcClass:[WJViewController2 class] titile:@"22222" image:@"tab_diary" slImage:@"tab_diary_press"];
    UINavigationController *nav3 = [self navForVcClass:[WJViewController3 class] titile:@"33333" image:@"tab_paradise" slImage:@"tab_paradise_press"];
    UINavigationController *nav4 = [self navForVcClass:[WJViewController4 class] titile:@"44444" image:@"tab_me" slImage:@"tab_me_press"];
    self.viewControllers = @[nav1, nav2, nav3, nav4];
    
    
    // 设置红点
    [self.tabBar showBadgeOnItemIndex:0];
    [self.tabBar showBadgeOnItemIndex:1];
    [self.tabBar showBadgeOnItemIndex:2];
    [self.tabBar showBadgeOnItemIndex:3];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@", self.tabBar.subviews);
    // 修改分割线的颜色
    for (UIView *v in self.tabBar.subviews) {
        if ([v isKindOfClass:[UIImageView class]]) {
            v.backgroundColor = [UIColor redColor];
        }
    }
}

- (UINavigationController *)navForVcClass:(Class)vcClass titile:(NSString *)title image:(NSString *)imageName slImage:(NSString *)slImageName {
    UIViewController *vc = [[vcClass alloc] init];
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:slImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor lightGrayColor]} forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    // 调整标题位置
    if ([vc isKindOfClass:[WJViewController4 class]]) {
        // 调整图片位置
        vc.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
        
        // 调整按钮间距
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, 50);
        
        // 设置红点
//        vc.tabBarItem.badgeValue = @"-";
    } else if ([vc isKindOfClass:[WJViewController3 class]]) {
//        vc.tabBarItem.badgeValue = @"1";
        vc.tabBarItem.imageInsets = UIEdgeInsetsMake(-10, 0, 10, 0);
    } else {
//        vc.tabBarItem.badgeValue = @"23";
    }

    return nav;
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
