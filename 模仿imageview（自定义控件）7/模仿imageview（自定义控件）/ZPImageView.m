//
//  ZPImageView.m
//  模仿imageview（自定义控件）
//
//  Created by apple on 16/7/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPImageView.h"

@implementation ZPImageView

- (void)setImage:(UIImage *)image
{
    _image = image;
    
    /**
     当在视图控制器类中点击视图控制器的View的时候需要更换图片，就会调用此方法，在此方法中要调用"setNeedsDisplay"重绘方法，系统才会创建关于这个View的图形上下文对象，然后系统会自动调用"drawRect:"方法，并且把创建好的图形上下文对象传到这个方法里面，最后再重新绘制新图片。
     */
    [self setNeedsDisplay];
}

/**
 调用这个方法的时候会创建一个和图片大小一模一样的控件，并且这个图片完全覆盖在这个控件上，没有进行伸缩。
 */
- (instancetype)initWithImage:(UIImage *)image
{
    //设置控件的尺寸和图片的尺寸一模一样
    if (self = [super initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)]) {
        
        _image = image;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    /**
     调用"drawInRect:"这个方法的意思是在设定的矩形框内画图片，并且图片填充整个矩形框；
     rect参数代表这个控件的尺寸。
     */
    [self.image drawInRect:rect];
}

@end
