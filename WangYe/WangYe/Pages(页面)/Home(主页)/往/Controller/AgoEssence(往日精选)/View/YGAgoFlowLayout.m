//
//  YGAgoFlowLayout.m
//  WangYe
//
//  Created by 阳光 on 2017/2/17.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGAgoFlowLayout.h"

@implementation YGAgoFlowLayout
- (instancetype)init
{
    if (self = [super init]) {
        CGFloat width = YGScreenW;
        CGFloat scale = 9 / 20.0;
        CGFloat height = width * scale + 35;
        self.itemSize = CGSizeMake(width, height);
        self.minimumInteritemSpacing = 10;
        self.minimumLineSpacing = 10;
        self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    }
    return self;
}
@end
