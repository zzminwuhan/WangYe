//
//  YGTabBarController.m
//  WangYe
//
//  Created by 阳光 on 2017/2/8.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGTabBarController.h"
#import "YGHomeController.h"
#import "YGEssenceController.h"
#import "YGListController.h"
@interface YGTabBarController ()

@end

@implementation YGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self allPropertySetup];
    [self setupAllControllers];
}

#pragma mark - 全局属性
- (void)allPropertySetup
{
    [UITabBar appearance].tintColor = YGRGBColor(67, 67, 67);
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: YGRGBColor(67, 67, 67)} forState:UIControlStateSelected];
    
    [UIImageView appearance].contentMode = UIViewContentModeScaleAspectFill;
    [UIImageView appearance].clipsToBounds = YES;
    [UICollectionView appearance].backgroundColor = YGBgColor;
}

#pragma mark - 创建所有tabBar子控制器
- (void)setupAllControllers
{
    YGHomeController *homeVC = [[YGHomeController alloc] initWithStyle:UITableViewStylePlain];
    homeVC.title = @"主页";
    homeVC.tabBarItem.image = @"nav_ic_home_default".yg_image;
    homeVC.tabBarItem.selectedImage = @"nav_ic_home_selected".yg_image;
    UINavigationController *homeNavi = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    YGEssenceController *essenceVC = [[YGEssenceController alloc] initWithStyle:UITableViewStylePlain];
    essenceVC.title = @"精华";
    essenceVC.tabBarItem.image = @"tab_btn_list_default".yg_image;
    essenceVC.tabBarItem.selectedImage = @"tab_btn_list_select".yg_image;
    UINavigationController *essenceNavi = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    
    YGListController *listVC = [[YGListController alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    listVC.title = @"专栏";
    listVC.tabBarItem.image = @"nav_ic_columns_default".yg_image;
    listVC.tabBarItem.selectedImage = @"nav_ic_columns_selected".yg_image;
    UINavigationController *listNavi = [[UINavigationController alloc] initWithRootViewController:listVC];
    
    self.viewControllers = @[homeNavi, essenceNavi, listNavi];
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