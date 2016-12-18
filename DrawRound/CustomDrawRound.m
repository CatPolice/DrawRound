//
//  CustomDrawRound.m
//  DrawRound
//
//  Created by gavin on 2016/12/18.
//  Copyright © 2016年 gavin. All rights reserved.
//

#import "CustomDrawRound.h"
#import <QuartzCore/QuartzCore.h>

#define PI 3.14159265358979323846

@implementation CustomDrawRound


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    /*画圆*/
    //边框圆
    /*
     CGContextSetRGBStrokeColor(context,1,1,1,1.0);//画笔线的颜色
     CGContextSetLineWidth(context, 1.0);//线的宽度
     //void CGContextAddArc(CGContextRef c,CGFloat x, CGFloat y,CGFloat radius,CGFloat startAngle,CGFloat endAngle, int clockwise)1弧度＝180°/π （≈57.3°） 度＝弧度×180°/π 360°＝360×π/180 ＝2π 弧度
     // x,y为圆点坐标，radius半径，startAngle为开始的弧度，endAngle为 结束的弧度，clockwise 0为顺时针，1为逆时针。
     CGContextAddArc(context, 100, 20, 15, 0, 2*PI, 0); //添加一个圆
     CGContextDrawPath(context, kCGPathStroke); //绘制路径
     */
    
    CGFloat radius = self.frame.size.width / 5 / 2;
    
    
    for (int i = 0; i < 5; i++) {
        //画大圆并填充颜
        CGFloat x = self.frame.size.width / 2;
        CGFloat y = self.frame.size.height / 2;
        CGContextAddArc(context, x, y, radius+radius*i, 0, 2*PI, 0);
        UIColor*aColor = [UIColor colorWithRed:1 green:0.0 blue:0 alpha:.1];
        CGContextSetFillColorWithColor(context, aColor.CGColor);//填充颜色
        CGContextDrawPath(context, kCGPathFill);//绘制填充
    }
    
    
    
    
    //    CGContextSetLineWidth(context, 3.0);//线的宽度
    //    CGContextAddArc(context, 250, 40, 40, 0, 2*PI, 0); //添加一个圆
    //    //kCGPathFill填充非零绕数规则,kCGPathEOFill表示用奇偶规则,kCGPathStroke路径,kCGPathFillStroke路径填充,kCGPathEOFillStroke表示描线，不是填充
    //    CGContextDrawPath(context, kCGPathFillStroke); //绘制路径加填充
}





@end
