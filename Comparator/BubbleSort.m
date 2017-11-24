//
//  BubbleSort.m
//  Comparator
//
//  Created by tongle on 2017/11/24.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "BubbleSort.h"
//        对冒泡排序常见的改进方法是加入一标志性变量exchange，用于标志某一趟排序过程中是否有数据交换，如果进行某一趟排序时并没有进行数据交换，则说明数据已经按要求排列好，可立即结束排序，避免不必要的比较过程
//        传统冒泡排序中每一趟排序操作只能找到一个最大值或最小值,我考虑利用在每趟排序中进行正向和反向两遍冒泡的方法一次可以得到两个最终值(最大者和最小者) , 从而使排序趟数几乎减少了一半
@implementation BubbleSort

+(void)bubbleSort:(NSMutableArray *)array lowA:(int)low highB:(int)high{
    int tmp,j;
    while (low < high) {
        for (j= low; j < high; ++j) //正向冒泡,找到最大者
            if ([array[j] integerValue]> [array[j+1] integerValue]) {
                tmp = (int)[array[j] integerValue];
                array[j]=array[j+1];
                array[j+1]=[NSNumber numberWithInt:tmp];
            }
        --high;                 //修改high值, 前移一位
        for ( j= high; j > low; --j) //反向冒泡,找到最小者
            if ([array[j] integerValue]<[array[j-1] integerValue]) {
                tmp = (int)[array[j] integerValue];
                array[j]=array[j-1];
                array[j-1]=[NSNumber numberWithInt:tmp];
            }
        ++low;//修改low值,后移一位
    }
}
@end
