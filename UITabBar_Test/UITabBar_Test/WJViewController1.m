//
//  WJViewController1.m
//  UITabBar_Test
//
//  Created by 曾维俊 on 16/4/5.
//  Copyright © 2016年 曾维俊. All rights reserved.
//

#import "WJViewController1.h"
#import "UITabBar+WJBadgeValue.h"

@interface WJViewController1 ()

@end

@implementation WJViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"显示、隐藏tabBar" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor greenColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClicked:(UIButton *)btn {
    if (btn.isSelected) {
//        [self.navigationController setNavigationBarHidden:NO animated:YES];
//        [self.navigationController setToolbarHidden:NO animated:YES];
        [self.tabBarController.tabBar showAnimated:YES];
    } else {
//        [self.navigationController setNavigationBarHidden:YES animated:YES];
//        [self.navigationController setToolbarHidden:YES animated:YES];
        [self.tabBarController.tabBar hideAnimated:YES];
    }
    btn.selected = !btn.isSelected;
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
