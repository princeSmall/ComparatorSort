//
//  ComparatorSort.m
//  Comparator
//
//  Created by iOS on 2017/11/24.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import "ComparatorSort.h"

@implementation ComparatorSort

+(NSArray *)ComparatorSort:(NSMutableArray *)array{

    NSArray * arr = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2)
    {
        if ([obj1 integerValue] > [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        if ([obj1 integerValue] < [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedAscending;
        }
        return (NSComparisonResult)NSOrderedSame;
    }];
    return arr;
}





@end
