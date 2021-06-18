//
//  LCFindCommonSuperViewManager.h
//  FindCommonSuperView
//
//  Created by lab team on 2021/6/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCFindCommonSuperViewManager : NSObject

// 查找两个视图的共同父视图
- (NSArray *)findCommonSuperView:(UIView *)view otherView:(UIView *)otherView;

@end

NS_ASSUME_NONNULL_END
