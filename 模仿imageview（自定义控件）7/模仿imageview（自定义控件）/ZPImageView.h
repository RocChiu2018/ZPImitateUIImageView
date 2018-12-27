//
//  ZPImageView.h
//  模仿imageview（自定义控件）
//
//  Created by apple on 16/7/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZPImageView : UIView

/**
 自定义的属性一定要重写setter方法，并且在setter方法中进行重绘。
 */
@property (nonatomic, strong) UIImage *image;

- (instancetype)initWithImage:(UIImage *)image;

@end
