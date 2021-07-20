//
//  DKDrawingsView.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKDrawingsView.h"
#import "DKColor.h"

@implementation DKDrawingsView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 8;
        [self.layer setBackgroundColor:[[UIColor whiteColor] CGColor]];
        [self.layer setShadowColor:[[UIColor chillSky] CGColor]];
        [self.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
        [self.layer setShadowRadius:4.25];
        [self.layer setShadowOpacity:0.25];
    }
    return self;
}

-(void)drawRect:(CGRect)rect {
    switch (self.drawItemNumber.integerValue) {
        case 1:
            [self drawHead];
        default:
            break;
    }
}


-(void)drawHead {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
    //// head-frame.svg Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 300, 300)];
        [fillColor setFill];
        [rectanglePath fill];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(71.91, 43.24)];
        [bezierPath addLineToPoint: CGPointMake(85.59, 96.18)];
        [bezierPath addLineToPoint: CGPointMake(96.18, 116.47)];
        [bezierPath addLineToPoint: CGPointMake(111.62, 133.68)];
        [bezierPath addLineToPoint: CGPointMake(135.44, 153.53)];
        [bezierPath addLineToPoint: CGPointMake(156.18, 158.38)];
        [bezierPath addLineToPoint: CGPointMake(187.94, 142.94)];
        [bezierPath addLineToPoint: CGPointMake(211.76, 116.47)];
        [bezierPath addLineToPoint: CGPointMake(219.26, 105.88)];
        [bezierPath addLineToPoint: CGPointMake(219.26, 86.03)];
        [bezierPath addLineToPoint: CGPointMake(221.03, 62.21)];
        [bezierPath addLineToPoint: CGPointMake(210.44, 53.38)];
        [bezierPath addLineToPoint: CGPointMake(195.88, 56.03)];
        [bezierPath addLineToPoint: CGPointMake(186.18, 71.03)];
        [bezierPath addLineToPoint: CGPointMake(184.41, 91.32)];
        [bezierPath addLineToPoint: CGPointMake(187.94, 102.35)];
        [strokeColor setStroke];
        bezierPath.lineWidth = 1;
        bezierPath.miterLimit = 4;
        bezierPath.lineCapStyle = kCGLineCapRound;
        [bezierPath stroke];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(180, 105.88)];
        [bezier2Path addLineToPoint: CGPointMake(172.5, 104.56)];
        [bezier2Path addLineToPoint: CGPointMake(164.12, 106.32)];
        [bezier2Path addLineToPoint: CGPointMake(157.06, 107.21)];
        [bezier2Path addLineToPoint: CGPointMake(148.68, 106.32)];
        [bezier2Path addLineToPoint: CGPointMake(141.18, 105)];
        [bezier2Path addLineToPoint: CGPointMake(135.44, 104.56)];
        [bezier2Path addLineToPoint: CGPointMake(128.82, 105.88)];
        [bezier2Path addLineToPoint: CGPointMake(124.85, 107.65)];
        [bezier2Path addLineToPoint: CGPointMake(130.15, 109.85)];
        [bezier2Path addLineToPoint: CGPointMake(134.12, 112.94)];
        [bezier2Path addLineToPoint: CGPointMake(138.09, 117.35)];
        [bezier2Path addLineToPoint: CGPointMake(143.38, 119.56)];
        [bezier2Path addLineToPoint: CGPointMake(150, 120.44)];
        [bezier2Path addLineToPoint: CGPointMake(156.18, 119.56)];
        [bezier2Path addLineToPoint: CGPointMake(162.79, 120.44)];
        [bezier2Path addLineToPoint: CGPointMake(168.09, 119.56)];
        [bezier2Path addLineToPoint: CGPointMake(173.82, 116.03)];
        [bezier2Path addLineToPoint: CGPointMake(180, 108.97)];
        [bezier2Path addLineToPoint: CGPointMake(183.97, 103.68)];
        [bezier2Path addLineToPoint: CGPointMake(176.91, 102.79)];
        [bezier2Path addLineToPoint: CGPointMake(168.97, 101.91)];
        [bezier2Path addLineToPoint: CGPointMake(161.03, 100.15)];
        [bezier2Path addLineToPoint: CGPointMake(153.53, 99.71)];
        [bezier2Path addLineToPoint: CGPointMake(144.71, 101.03)];
        [bezier2Path addLineToPoint: CGPointMake(136.76, 102.79)];
        [bezier2Path addLineToPoint: CGPointMake(127.94, 103.68)];
        [bezier2Path addLineToPoint: CGPointMake(121.76, 103.24)];
        [bezier2Path addLineToPoint: CGPointMake(130.15, 97.94)];
        [bezier2Path addLineToPoint: CGPointMake(138.09, 92.21)];
        [bezier2Path addLineToPoint: CGPointMake(143.38, 89.12)];
        [bezier2Path addLineToPoint: CGPointMake(147.79, 90.44)];
        [bezier2Path addLineToPoint: CGPointMake(152.65, 92.21)];
        [bezier2Path addLineToPoint: CGPointMake(158.38, 91.32)];
        [bezier2Path addLineToPoint: CGPointMake(164.12, 90.44)];
        [bezier2Path addLineToPoint: CGPointMake(168.97, 90.44)];
        [bezier2Path addLineToPoint: CGPointMake(171.62, 92.21)];
        [bezier2Path addLineToPoint: CGPointMake(176.03, 96.62)];
        [bezier2Path addLineToPoint: CGPointMake(182.65, 100.59)];
        [strokeColor setStroke];
        bezier2Path.lineWidth = 1;
        bezier2Path.miterLimit = 4;
        bezier2Path.lineCapStyle = kCGLineCapRound;
        [bezier2Path stroke];
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(184.85, 108.09)];
        [bezier3Path addLineToPoint: CGPointMake(188.82, 113.38)];
        [bezier3Path addLineToPoint: CGPointMake(191.03, 119.12)];
        [bezier3Path addLineToPoint: CGPointMake(187.94, 127.06)];
        [bezier3Path addLineToPoint: CGPointMake(181.76, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(173.82, 140.74)];
        [bezier3Path addLineToPoint: CGPointMake(165.44, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(156.18, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(147.79, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(137.21, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(130.15, 142.94)];
        [bezier3Path addLineToPoint: CGPointMake(124.41, 153.97)];
        [bezier3Path addLineToPoint: CGPointMake(114.26, 147.79)];
        [bezier3Path addLineToPoint: CGPointMake(107.21, 138.97)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 142.94)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 168.09)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 183.09)];
        [bezier3Path addLineToPoint: CGPointMake(93.53, 193.24)];
        [bezier3Path addLineToPoint: CGPointMake(83.38, 200.74)];
        [bezier3Path addLineToPoint: CGPointMake(73.68, 206.91)];
        [bezier3Path addLineToPoint: CGPointMake(89.12, 212.65)];
        [bezier3Path addLineToPoint: CGPointMake(101.03, 220.15)];
        [bezier3Path addLineToPoint: CGPointMake(110.29, 232.5)];
        [bezier3Path addLineToPoint: CGPointMake(122.65, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(139.41, 263.82)];
        [bezier3Path addLineToPoint: CGPointMake(156.18, 269.56)];
        [bezier3Path addLineToPoint: CGPointMake(168.53, 269.56)];
        [bezier3Path addLineToPoint: CGPointMake(181.76, 262.5)];
        [bezier3Path addLineToPoint: CGPointMake(193.68, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(202.5, 228.97)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 214.85)];
        [bezier3Path addLineToPoint: CGPointMake(223.68, 209.12)];
        [bezier3Path addLineToPoint: CGPointMake(226.76, 209.12)];
        [bezier3Path addLineToPoint: CGPointMake(221.03, 195.44)];
        [bezier3Path addLineToPoint: CGPointMake(212.65, 170.29)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 150)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 129.26)];
        [bezier3Path addLineToPoint: CGPointMake(204.71, 138.97)];
        [bezier3Path addLineToPoint: CGPointMake(197.65, 146.03)];
        [bezier3Path addLineToPoint: CGPointMake(191.03, 153.97)];
        [bezier3Path addLineToPoint: CGPointMake(176.47, 168.09)];
        [bezier3Path addLineToPoint: CGPointMake(167.65, 180.88)];
        [bezier3Path addLineToPoint: CGPointMake(160.15, 199.85)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 222.79)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 263.82)];
        [strokeColor setStroke];
        bezier3Path.lineWidth = 1;
        bezier3Path.miterLimit = 4;
        bezier3Path.lineCapStyle = kCGLineCapRound;
        [bezier3Path stroke];
    }
    
}












@end
