//
//  LCFindCommonSuperViewManager.m
//  FindCommonSuperView
//
//  Created by lab team on 2021/6/18.
//

#import "LCFindCommonSuperViewManager.h"

@implementation LCFindCommonSuperViewManager

- (NSArray *)findCommonSuperView:(UIView *)view otherView:(UIView *)otherView {
    NSMutableArray *result = [NSMutableArray new];
    
    // 查找第一个视图的所有父视图
    NSArray *arrayOne = [self findSuperViews:view];
    NSLog(@"第一个%@", arrayOne);
    // 查找第二个视图的所有父视图
    NSArray *arrayOther = [self findSuperViews:otherView];
    NSLog(@"第二个 %@", arrayOther);
    
    int i = 0;
    // 越界限制条件
    while (i < MIN((int)arrayOne.count, (int)arrayOther.count)) {
        // 倒序方式获取各个视图的父视图
        UIView *superone = [arrayOne objectAtIndex:arrayOne.count - i - 1];
        UIView *supertwo = [arrayOther objectAtIndex:arrayOther.count - i - 1];
        
        // 比较如果相等 则为共同父视图
        if (superone == supertwo) {
            [result addObject:superone];
            i++;
        }
        // 如果不相等，则结束遍历
        else {
            break;
        }
    }
    
    return result;
}


- (NSArray <UIView *> *)findSuperViews:(UIView *)subView {
    
    // 初始化第一父视图
    UIView *temp = subView.superview;
    
    // 保存结果的数组
    NSMutableArray *superList = [NSMutableArray array];
    while (temp) {
        [superList addObject:temp];
        
        // 顺着 superview 指针一直向上查找
        temp = temp.superview;
    }
    
    return superList;
}

@end
