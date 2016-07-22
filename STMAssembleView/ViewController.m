//
//  ViewController.m
//  STMAssembleView
//
//  Created by Daiming on 16/7/20.
//  Copyright © 2016年 Starming. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "STMAssembleView.h"

@interface ViewController ()

@property (nonatomic, strong) STMAssembleView *asView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *avatarImageView = [UIImageView new];
    avatarImageView.clipsToBounds = YES;
    avatarImageView.layer.cornerRadius = 35/2;
    UIButton *clickBt = [UIButton new];
    NSDictionary *asDic = @{
                            @"avatarImageView":avatarImageView,
                            @"clickBt":clickBt
                            };
    //排列居中
    NSString *sizeStr = @"width:25,height:18";
    NSString *centerStr = ASS(@"{hc(padding:30)[(imageName:starmingicon,%@)][(imageName:starmingicon,%@)][(imageName:starmingicon,%@)]}",sizeStr,sizeStr,sizeStr);
    //嵌套组合布局
    NSString *midStr = @"{ht(padding:10)[avatarImageView(imageName:avatar)][{vl(padding:10)[(text:戴铭,color:AAA0A3)][(text:Starming站长,color:E3DEE0,font:13)][(text:喜欢画画编程和写小说,color:E3DEE0,font:13)]}(width:210,backColor:FAF8F9,backPaddingHorizontal:10,backPaddingVertical:10,radius:8)]}";
    //按钮
    NSString *followBtStr = @"{hc(padding:4)[(imageName:starmingicon,width:14,height:10)][(text:关注,font:16,color:FFFFFF)]}";
    //说明区域
    NSString *desStr = @"{hc(padding:5.5)[(text:STMAssembleView.演示,color:E3DEE0,font:13)][(imageName:starmingicon,width:14,height:10,ignoreAlignment:left)][(text:www.starming.com星光社,color:E3DEE0,font:13)]}";
    //整体组装
    NSString *asStr = ASS(@"{vc(padding:20)[%@(height:90)][%@(height:36,backColor:AAA0A3,radius:8,backBorderWidth:1,backBorderColor:E3DEE0,backPaddingHorizontal:80,backPaddingVertical:10,button:<clickBt>)][%@(height:25)][%@(ignoreAlignment:top,isFill:1,height:16)]}",midStr,followBtStr,centerStr,desStr);
    
    self.asView = [STMAssembleView fs:asStr objects:asDic];
    [self.view addSubview:self.asView];
    [self.asView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(30);
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.bottom.equalTo(self.view).offset(-20);
    }];
}


@end
