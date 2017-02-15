//
//  YGHomeItem.m
//  WangYe
//
//  Created by 阳光 on 2017/2/15.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGHomeItem.h"

@implementation YGHomeItem
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{
             @"videos":@"YGHomeVideosItem"
             };
}

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{
             @"aut":@"auto"
             };
}
@end
@implementation YGHomeVideosItem
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{
             @"temp":@"template"
             };
}
@end
