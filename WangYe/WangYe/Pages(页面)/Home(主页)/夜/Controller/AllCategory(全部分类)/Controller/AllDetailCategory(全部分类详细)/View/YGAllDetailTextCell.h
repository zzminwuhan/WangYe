//
//  YGAllDetailTextCell.h
//  WangYe
//
//  Created by 阳光 on 2017/2/20.
//  Copyright © 2017年 YG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YGAllDetailTextCell : UITableViewCell
/** title */
@property(nonatomic, strong) UILabel *titleLB;
/** 图片 */
@property(nonatomic, strong) YYAnimatedImageView *iconIV;
/** 分割线 */
@property(nonatomic, strong) UIView *cellSeparator;
@end
