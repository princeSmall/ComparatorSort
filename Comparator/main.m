//
//  main.m
//  Comparator
//
//  Created by iOS on 2017/11/24.
//  Copyright © 2017年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
       
        
    NSMutableArray * shorterArray = [NSMutableArray arrayWithObjects:@"1",@"3",@"4",@"7",@"8",@"2",@"6",@"5",@"13",@"15",@"12",@"20",@"18", nil];
        
//        int lower = 0;
//        int higher = (int)shorterArray.count; //设置变量的初始值
//        while (lower < higher) {
//        for (int i = lower; i < higher; ++i)
//            for (int j = i + 1; j < higher; j ++) {
//                if ([shorterArray[i] integerValue] > [shorterArray[j] integerValue]) {
//                    int temp = [shorterArray[i] intValue];
//                    shorterArray[i] = shorterArray[j];
//                    shorterArray[j] = [NSNumber numberWithInt:temp];
//                }
//            }
//            ++lower;
//            --higher;
//             }
//        NSLog(@"选择排序数组：%@",shorterArray);
//
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}


