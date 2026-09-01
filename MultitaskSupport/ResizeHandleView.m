//
//  ResizeHandleView.m
//  LiveContainer
//
//  Created by Duy Tran on 2/6/25.
//
#import "ResizeHandleView.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@implementation ResizeHandleView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.clipsToBounds = YES;
    self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width*sqrt(2), frame.size.height*sqrt(2))];
    backgroundView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.01];
    backgroundView.center = CGPointMake(frame.size.width, frame.size.height);
    backgroundView.transform = CGAffineTransformMakeRotation(M_PI_4);
    [self addSubview:backgroundView];

    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(10,10) radius:23 startAngle:9.0*M_PI/180.0 endAngle:81.0*M_PI/180.0 clockwise:YES];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.strokeColor = [UIColor labelColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.lineWidth = 4.0;
    layer.lineCap = kCALineCapRound;
    [self.layer addSublayer:layer];
    return self;
}
@end
