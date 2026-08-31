#import "ResizeHandleView.h"

// AI
@implementation ResizeHandleView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;

        CGFloat lineThickness = 3.0;
        CGFloat cornerRadius = 12.0;
        CGFloat margin = 6.0;

        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(frame.size.width - margin - cornerRadius, frame.size.height - margin)];
        [path addArcWithCenter:CGPointMake(frame.size.width - margin - cornerRadius, frame.size.height - margin - cornerRadius)
                        radius:cornerRadius
                    startAngle:M_PI_2
                      endAngle:0
                     clockwise:NO];

        CAShapeLayer *handleLayer = [CAShapeLayer layer];
        handleLayer.path = path.CGPath;
        handleLayer.strokeColor = [UIColor colorWithWhite:0.0 alpha:0.45].CGColor;
        handleLayer.fillColor = [UIColor clearColor].CGColor;
        handleLayer.lineWidth = lineThickness;
        handleLayer.lineCap = kCALayerLineCapRound;

        [self.layer addSublayer:handleLayer];
    }
    return self;
}

@end