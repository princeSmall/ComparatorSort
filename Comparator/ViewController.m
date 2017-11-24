//
//  ViewController.m
//  Comparator
//
//  Created by tongle on 2017/11/24.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "ViewController.h"
#import "QuickSort.h"
#import "BubbleSort.h"
#import "ComparatorSort.h"
#import "SelectSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray * shortArray = [NSMutableArray arrayWithObjects:@"1",@"3",@"4",@"7",@"8",@"2",@"6",@"5",@"13",@"15",@"12",@"20",@"18", nil];
   
    
    [SelectSort selectSort:shortArray arrayCount:(int)shortArray.count];
    NSLog(@"选择排序数组--%@",shortArray);
//    [QuickSort quickSort:shortArray arrayCount:(int)shortArray.count - 1 centerK:5];
//    NSLog(@"快速生序数组--%@",shortArray);
//
//    [BubbleSort bubbleSort:shortArray lowA:0 highB:(int)shortArray.count - 1];
//     NSLog(@"冒泡排序数组：%@",shortArray);
//
//    NSArray * array =[ComparatorSort ComparatorSort:shortArray];
//    NSLog(@"Comparator排序数组：%@",array);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
