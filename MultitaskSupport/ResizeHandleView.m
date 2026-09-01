//
//  ResizeHandleView.m
//  LiveContainer
//
//  Created by Duy Tran on 2/6/25.
//
#import "ResizeHandleView.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <math.h>

@implementation ResizeHandleView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor clearColor];
    self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;

    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(0,0) radius:20.0 startAngle:9.0*M_PI/180.0 endAngle:81.0*M_PI/180.0 clockwise:YES];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.strokeColor = [UIColor labelColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.lineWidth = 3.0;
    layer.lineCap = kCALineCapRound;
    [self.layer addSublayer:layer];
    return self;
}
@end
