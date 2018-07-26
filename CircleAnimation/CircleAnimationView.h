//
//  CircleAnimationView.h
//  CircleAnimation
//
//  Created by Superman on 2018/7/26.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleAnimationView : UIView

@property (nonatomic, assign) CGFloat percent; // 百分比 0 - 100
@property (nonatomic, strong) UIImage *bgImage; // 背景图片
@property (nonatomic, strong) NSString *text; // 文字


@end
