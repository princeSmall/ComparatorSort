//
//  QuickSort.m
//  Comparator
//
//  Created by iOS on 2017/11/24.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import "QuickSort.h"


// 快速排序是通常被认为在同数量级（O(nlog2n)）的排序方法中平均性能最好的。但若初始序列按关键码有序或基本有序时，快排序反而蜕化为冒泡排序。为改进之，通常以“三者取中法”来选取基准记录，即将排序区间的两个端点与中点三个记录关键码居中的调整为支点记录。快速排序是一个不稳定的排序方法

@implementation QuickSort
#pragma mark - 快速升序排序
//   先调用改进算法QsortImprove使之基本有序
//   再用插入排序对基本有序序列排序
+ (void)quickSort:(NSMutableArray *)array arrayCount:(int)c centerK:(int)k{
    [self qsortImprove:array lowA:0 highB:c centerK:k];
    for (int i = 1; i <= c; i ++) {
        int tmp = (int)[array[i] integerValue];
        int j = i - 1;
        while (tmp < (int)[array[j] integerValue]) {
            array[j + 1] = array[j];
            j = j - 1;
        }
        array[j + 1] = [NSNumber numberWithInt:tmp];
    }
}
// 长度大于k时开始递归，k为指定的数
// 调用的PartitionArray 算法保持不变
+ (void)qsortImprove:(NSMutableArray *)array lowA:(int)a highB:(int)b centerK:(int)k{
    if (b - a > k) {
        int privot = [self partitionArray:array lowA:a highB:b];
        [self qsortImprove:array lowA:a highB:privot -1 centerK:k];
        [self qsortImprove:array lowA:privot +1 highB:b centerK:k];
    }
}

/**
 基本有序
 
 @param array 要排序的数组
 @param a 第一个元素的坐标
 @param b 最后一个元素的坐标
 @return 实现基本有序
 */
+ (int)partitionArray:(NSMutableArray *)array lowA:(int)a highB:(int)b{
    //    基准元素
    int privotKey = (int)array[a];
    //     从表的两端交替地向中间扫描
    while (a < b) {
        
        while (a < b && [array[b] integerValue] >= privotKey) {
            b--;
            int tmp = (int)[array[a] integerValue];
            array[a] = array[b];
            array[b] = [NSNumber numberWithInt:tmp];
        }
        while (a < b && [array[a] integerValue] <= privotKey) {
            a++;
            int tmp = (int)[array[a] integerValue];
            array[a] = array[b];
            array[b] = [NSNumber numberWithInt:tmp];
        }
    }
    return a;
}

@end
