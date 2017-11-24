//
//  SelectSort.m
//  Comparator
//
//  Created by tongle on 2017/11/24.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort

//在要排序的一组数中，选出最小（或者最大）的一个数与第1个位置的数交换；然后在剩下的数当中再找最小（或者最大）的与第2个位置的数交换，依次类推，直到第n-1个元素（倒数第二个数）和第n个元素（最后一个数）比较为止

+ (void)selectSort:(NSMutableArray *)array arrayCount:(int)n{

    for (int i = 0; i < n; i ++) {
        for (int j = i + 1; j < n; j ++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                int temp = [array[i] intValue];
                array[i] = array[j];
                array[j] = [NSNumber numberWithInt:temp];
            }
        }
    }
    NSLog(@"选择排序数组：%@",array);
    
    
}

@end
