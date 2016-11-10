//
//  STMAssembleView.h
//  HomePageTest
//
//  Created by DaiMing on 16/4/15.
//  Copyright © 2016年 Starming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STMAssembleMaker.h"
@class STMPartView;

@interface STMAssembleView : UIView

@property (nonatomic, strong, readonly) STMAssembleMaker *maker;

+ (STMAssembleView *)createView:(void(^)(STMAssembleMaker *make))assembleMaker;

//主线程使用格式化字符串创建AssembleView
+ (STMAssembleView *)fs:(NSString *)string objects:(NSDictionary *)objs;
//异步线程格式化字符串，内部实现异步处理，外部需要父视图或类持有string和objs，如果在方法栈里设置的话string和objs在异步还没开始执行前出栈时会被释放。
+ (void)fsAsync:(NSString *)string objects:(NSDictionary *)objs completion:(ParsingFormatStringCompleteBlock)completeBlock;
//提供可异步操作回调主线程block，内部没实现异步处理，需要在外部进行。
+ (STMAssembleView *)createViewWithFormatString:(NSString *)string objects:(NSDictionary *)objs completion:(ParsingFormatStringCompleteBlock)completeBlock;

//简化NSString的format
FOUNDATION_EXPORT NSString *ASS(NSString *format, ...) NS_FORMAT_FUNCTION(1,2);

@end
