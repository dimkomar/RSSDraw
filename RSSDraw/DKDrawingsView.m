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
        [self drawTree];
        //тут нежен аррай с сетом
    }
    return self;
}











-(void)drawTree {
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];

    //// Image Declarations
    UIImage* treeframe = [UIImage imageNamed: @"treeframe.png"];

    //// Picture Drawing
    UIBezierPath* picturePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 300, 300)];
    CGContextSaveGState(context);
    [picturePath addClip];
    CGContextTranslateCTM(context, 0, 0);
    CGContextScaleCTM(context, 1, -1);
    CGContextTranslateCTM(context, 0, -treeframe.size.height);
    CGContextDrawImage(context, CGRectMake(0, 0, treeframe.size.width, treeframe.size.height), treeframe.CGImage);
    CGContextRestoreGState(context);


    //// tree-frame.svg Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 300, 300)];
        [fillColor setFill];
        [rectanglePath fill];


        //// Bezier Drawing


        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(205.76, 75.67)];
        [bezier2Path addLineToPoint: CGPointMake(205.12, 75.07)];
        [bezier2Path addLineToPoint: CGPointMake(204.38, 75.84)];
        [bezier2Path addLineToPoint: CGPointMake(205.28, 76.42)];
        [bezier2Path addLineToPoint: CGPointMake(205.76, 75.67)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(190.56, 55.2)];
        [bezier2Path addLineToPoint: CGPointMake(189.68, 55.26)];
        [bezier2Path addLineToPoint: CGPointMake(189.75, 56.31)];
        [bezier2Path addLineToPoint: CGPointMake(190.77, 56.05)];
        [bezier2Path addLineToPoint: CGPointMake(190.56, 55.2)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(169.06, 44.8)];
        [bezier2Path addLineToPoint: CGPointMake(168.5, 45.49)];
        [bezier2Path addLineToPoint: CGPointMake(168.94, 45.83)];
        [bezier2Path addLineToPoint: CGPointMake(169.44, 45.59)];
        [bezier2Path addLineToPoint: CGPointMake(169.06, 44.8)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(155.26, 41.96)];
        [bezier2Path addLineToPoint: CGPointMake(154.38, 42.02)];
        [bezier2Path addLineToPoint: CGPointMake(154.46, 43.07)];
        [bezier2Path addLineToPoint: CGPointMake(155.48, 42.82)];
        [bezier2Path addLineToPoint: CGPointMake(155.26, 41.96)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(128.46, 35.91)];
        [bezier2Path addLineToPoint: CGPointMake(128.22, 36.76)];
        [bezier2Path addLineToPoint: CGPointMake(128.81, 36.93)];
        [bezier2Path addLineToPoint: CGPointMake(129.17, 36.43)];
        [bezier2Path addLineToPoint: CGPointMake(128.46, 35.91)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(115.42, 37.73)];
        [bezier2Path addLineToPoint: CGPointMake(115.16, 38.58)];
        [bezier2Path addLineToPoint: CGPointMake(115.55, 38.7)];
        [bezier2Path addLineToPoint: CGPointMake(115.89, 38.48)];
        [bezier2Path addLineToPoint: CGPointMake(115.42, 37.73)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(98.46, 42.97)];
        [bezier2Path addLineToPoint: CGPointMake(98.22, 43.82)];
        [bezier2Path addLineToPoint: CGPointMake(98.81, 43.99)];
        [bezier2Path addLineToPoint: CGPointMake(99.17, 43.49)];
        [bezier2Path addLineToPoint: CGPointMake(98.46, 42.97)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(79.42, 55.61)];
        [bezier2Path addLineToPoint: CGPointMake(80.05, 56.23)];
        [bezier2Path addLineToPoint: CGPointMake(80.32, 55.96)];
        [bezier2Path addLineToPoint: CGPointMake(80.3, 55.57)];
        [bezier2Path addLineToPoint: CGPointMake(79.42, 55.61)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(78.16, 57.09)];
        [bezier2Path addLineToPoint: CGPointMake(77.92, 57.94)];
        [bezier2Path addLineToPoint: CGPointMake(78.52, 58.11)];
        [bezier2Path addLineToPoint: CGPointMake(78.88, 57.61)];
        [bezier2Path addLineToPoint: CGPointMake(78.16, 57.09)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(60.51, 74.74)];
        [bezier2Path addLineToPoint: CGPointMake(61.23, 75.26)];
        [bezier2Path addLineToPoint: CGPointMake(61.56, 74.81)];
        [bezier2Path addLineToPoint: CGPointMake(61.29, 74.32)];
        [bezier2Path addLineToPoint: CGPointMake(60.51, 74.74)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(59.29, 86.4)];
        [bezier2Path addLineToPoint: CGPointMake(59.97, 86.97)];
        [bezier2Path addLineToPoint: CGPointMake(60.32, 86.54)];
        [bezier2Path addLineToPoint: CGPointMake(60.09, 86.04)];
        [bezier2Path addLineToPoint: CGPointMake(59.29, 86.4)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(57.87, 99.45)];
        [bezier2Path addLineToPoint: CGPointMake(58.58, 99.97)];
        [bezier2Path addLineToPoint: CGPointMake(58.91, 99.52)];
        [bezier2Path addLineToPoint: CGPointMake(58.64, 99.03)];
        [bezier2Path addLineToPoint: CGPointMake(57.87, 99.45)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(72.07, 119.01)];
        [bezier2Path addLineToPoint: CGPointMake(72.84, 118.58)];
        [bezier2Path addLineToPoint: CGPointMake(72.55, 118.06)];
        [bezier2Path addLineToPoint: CGPointMake(71.97, 118.13)];
        [bezier2Path addLineToPoint: CGPointMake(72.07, 119.01)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(92.07, 124.64)];
        [bezier2Path addLineToPoint: CGPointMake(92.87, 124.25)];
        [bezier2Path addLineToPoint: CGPointMake(92.48, 123.47)];
        [bezier2Path addLineToPoint: CGPointMake(91.7, 123.84)];
        [bezier2Path addLineToPoint: CGPointMake(92.07, 124.64)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(107.36, 132.24)];
        [bezier2Path addLineToPoint: CGPointMake(108.13, 131.81)];
        [bezier2Path addLineToPoint: CGPointMake(107.84, 131.3)];
        [bezier2Path addLineToPoint: CGPointMake(107.26, 131.37)];
        [bezier2Path addLineToPoint: CGPointMake(107.36, 132.24)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(127.94, 137.59)];
        [bezier2Path addLineToPoint: CGPointMake(128.35, 136.81)];
        [bezier2Path addLineToPoint: CGPointMake(127.94, 136.59)];
        [bezier2Path addLineToPoint: CGPointMake(127.53, 136.81)];
        [bezier2Path addLineToPoint: CGPointMake(127.94, 137.59)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(132.05, 139.06)];
        [bezier2Path addLineToPoint: CGPointMake(132.7, 138.47)];
        [bezier2Path addLineToPoint: CGPointMake(132.51, 138.26)];
        [bezier2Path addLineToPoint: CGPointMake(132.23, 138.2)];
        [bezier2Path addLineToPoint: CGPointMake(132.05, 139.06)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(150.31, 142.28)];
        [bezier2Path addLineToPoint: CGPointMake(151.1, 141.89)];
        [bezier2Path addLineToPoint: CGPointMake(150.72, 141.11)];
        [bezier2Path addLineToPoint: CGPointMake(149.93, 141.49)];
        [bezier2Path addLineToPoint: CGPointMake(150.31, 142.28)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(165.6, 149.89)];
        [bezier2Path addLineToPoint: CGPointMake(166.37, 149.46)];
        [bezier2Path addLineToPoint: CGPointMake(166.08, 148.95)];
        [bezier2Path addLineToPoint: CGPointMake(165.5, 149.01)];
        [bezier2Path addLineToPoint: CGPointMake(165.6, 149.89)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(186.18, 155.23)];
        [bezier2Path addLineToPoint: CGPointMake(186.59, 154.45)];
        [bezier2Path addLineToPoint: CGPointMake(186.18, 154.23)];
        [bezier2Path addLineToPoint: CGPointMake(185.76, 154.45)];
        [bezier2Path addLineToPoint: CGPointMake(186.18, 155.23)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(208.23, 143.82)];
        [bezier2Path addLineToPoint: CGPointMake(208.25, 142.94)];
        [bezier2Path addLineToPoint: CGPointMake(207.31, 142.91)];
        [bezier2Path addLineToPoint: CGPointMake(207.34, 143.85)];
        [bezier2Path addLineToPoint: CGPointMake(208.23, 143.82)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(216.18, 142)];
        [bezier2Path addLineToPoint: CGPointMake(216.59, 141.22)];
        [bezier2Path addLineToPoint: CGPointMake(216.18, 141)];
        [bezier2Path addLineToPoint: CGPointMake(215.76, 141.22)];
        [bezier2Path addLineToPoint: CGPointMake(216.18, 142)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(237.94, 128.44)];
        [bezier2Path addLineToPoint: CGPointMake(237.49, 127.68)];
        [bezier2Path addLineToPoint: CGPointMake(236.93, 128.01)];
        [bezier2Path addLineToPoint: CGPointMake(237.08, 128.64)];
        [bezier2Path addLineToPoint: CGPointMake(237.94, 128.44)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(241.05, 109.62)];
        [bezier2Path addLineToPoint: CGPointMake(240.58, 108.88)];
        [bezier2Path addLineToPoint: CGPointMake(239.68, 109.45)];
        [bezier2Path addLineToPoint: CGPointMake(240.41, 110.23)];
        [bezier2Path addLineToPoint: CGPointMake(241.05, 109.62)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(228.5, 86.96)];
        [bezier2Path addLineToPoint: CGPointMake(227.62, 87.02)];
        [bezier2Path addLineToPoint: CGPointMake(227.7, 88.07)];
        [bezier2Path addLineToPoint: CGPointMake(228.71, 87.82)];
        [bezier2Path addLineToPoint: CGPointMake(228.5, 86.96)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(207, 76.56)];
        [bezier2Path addLineToPoint: CGPointMake(206.45, 77.25)];
        [bezier2Path addLineToPoint: CGPointMake(206.88, 77.6)];
        [bezier2Path addLineToPoint: CGPointMake(207.38, 77.36)];
        [bezier2Path addLineToPoint: CGPointMake(207, 76.56)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(206.4, 76.28)];
        [bezier2Path addCurveToPoint: CGPointMake(210, 67.5) controlPoint1: CGPointMake(208.64, 73.92) controlPoint2: CGPointMake(210, 70.86)];
        [bezier2Path addLineToPoint: CGPointMake(208.24, 67.5)];
        [bezier2Path addCurveToPoint: CGPointMake(205.12, 75.07) controlPoint1: CGPointMake(208.24, 70.36) controlPoint2: CGPointMake(207.08, 73)];
        [bezier2Path addLineToPoint: CGPointMake(206.4, 76.28)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(210, 67.5)];
        [bezier2Path addCurveToPoint: CGPointMake(194.56, 53.82) controlPoint1: CGPointMake(210, 59.84) controlPoint2: CGPointMake(202.98, 53.82)];
        [bezier2Path addLineToPoint: CGPointMake(194.56, 55.59)];
        [bezier2Path addCurveToPoint: CGPointMake(208.24, 67.5) controlPoint1: CGPointMake(202.22, 55.59) controlPoint2: CGPointMake(208.24, 61.02)];
        [bezier2Path addLineToPoint: CGPointMake(210, 67.5)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(194.56, 53.82)];
        [bezier2Path addCurveToPoint: CGPointMake(190.34, 54.34) controlPoint1: CGPointMake(193.1, 53.82) controlPoint2: CGPointMake(191.69, 54)];
        [bezier2Path addLineToPoint: CGPointMake(190.77, 56.05)];
        [bezier2Path addCurveToPoint: CGPointMake(194.56, 55.59) controlPoint1: CGPointMake(191.97, 55.75) controlPoint2: CGPointMake(193.24, 55.59)];
        [bezier2Path addLineToPoint: CGPointMake(194.56, 53.82)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(191.44, 55.13)];
        [bezier2Path addCurveToPoint: CGPointMake(176.03, 42.35) controlPoint1: CGPointMake(190.91, 47.9) controlPoint2: CGPointMake(184.12, 42.35)];
        [bezier2Path addLineToPoint: CGPointMake(176.03, 44.12)];
        [bezier2Path addCurveToPoint: CGPointMake(189.68, 55.26) controlPoint1: CGPointMake(183.38, 44.12) controlPoint2: CGPointMake(189.23, 49.13)];
        [bezier2Path addLineToPoint: CGPointMake(191.44, 55.13)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(176.03, 42.35)];
        [bezier2Path addCurveToPoint: CGPointMake(168.67, 44) controlPoint1: CGPointMake(173.37, 42.35) controlPoint2: CGPointMake(170.86, 42.95)];
        [bezier2Path addLineToPoint: CGPointMake(169.44, 45.59)];
        [bezier2Path addCurveToPoint: CGPointMake(176.03, 44.12) controlPoint1: CGPointMake(171.39, 44.65) controlPoint2: CGPointMake(173.63, 44.12)];
        [bezier2Path addLineToPoint: CGPointMake(176.03, 42.35)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(169.61, 44.11)];
        [bezier2Path addCurveToPoint: CGPointMake(159.26, 40.59) controlPoint1: CGPointMake(166.86, 41.91) controlPoint2: CGPointMake(163.23, 40.59)];
        [bezier2Path addLineToPoint: CGPointMake(159.26, 42.35)];
        [bezier2Path addCurveToPoint: CGPointMake(168.5, 45.49) controlPoint1: CGPointMake(162.84, 42.35) controlPoint2: CGPointMake(166.08, 43.55)];
        [bezier2Path addLineToPoint: CGPointMake(169.61, 44.11)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(159.26, 40.59)];
        [bezier2Path addCurveToPoint: CGPointMake(155.05, 41.1) controlPoint1: CGPointMake(157.8, 40.59) controlPoint2: CGPointMake(156.39, 40.77)];
        [bezier2Path addLineToPoint: CGPointMake(155.48, 42.82)];
        [bezier2Path addCurveToPoint: CGPointMake(159.26, 42.35) controlPoint1: CGPointMake(156.68, 42.51) controlPoint2: CGPointMake(157.95, 42.35)];
        [bezier2Path addLineToPoint: CGPointMake(159.26, 40.59)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(156.14, 41.9)];
        [bezier2Path addCurveToPoint: CGPointMake(140.74, 29.12) controlPoint1: CGPointMake(155.61, 34.67) controlPoint2: CGPointMake(148.82, 29.12)];
        [bezier2Path addLineToPoint: CGPointMake(140.74, 30.88)];
        [bezier2Path addCurveToPoint: CGPointMake(154.38, 42.02) controlPoint1: CGPointMake(148.09, 30.88) controlPoint2: CGPointMake(153.94, 35.9)];
        [bezier2Path addLineToPoint: CGPointMake(156.14, 41.9)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(140.74, 29.12)];
        [bezier2Path addCurveToPoint: CGPointMake(127.75, 35.39) controlPoint1: CGPointMake(135.31, 29.12) controlPoint2: CGPointMake(130.51, 31.6)];
        [bezier2Path addLineToPoint: CGPointMake(129.17, 36.43)];
        [bezier2Path addCurveToPoint: CGPointMake(140.74, 30.88) controlPoint1: CGPointMake(131.58, 33.12) controlPoint2: CGPointMake(135.84, 30.88)];
        [bezier2Path addLineToPoint: CGPointMake(140.74, 29.12)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(128.7, 35.06)];
        [bezier2Path addCurveToPoint: CGPointMake(123.97, 34.41) controlPoint1: CGPointMake(127.21, 34.64) controlPoint2: CGPointMake(125.62, 34.41)];
        [bezier2Path addLineToPoint: CGPointMake(123.97, 36.18)];
        [bezier2Path addCurveToPoint: CGPointMake(128.22, 36.76) controlPoint1: CGPointMake(125.45, 36.18) controlPoint2: CGPointMake(126.88, 36.38)];
        [bezier2Path addLineToPoint: CGPointMake(128.7, 35.06)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(123.97, 34.41)];
        [bezier2Path addCurveToPoint: CGPointMake(114.94, 36.99) controlPoint1: CGPointMake(120.61, 34.41) controlPoint2: CGPointMake(117.49, 35.36)];
        [bezier2Path addLineToPoint: CGPointMake(115.89, 38.48)];
        [bezier2Path addCurveToPoint: CGPointMake(123.97, 36.18) controlPoint1: CGPointMake(118.15, 37.03) controlPoint2: CGPointMake(120.94, 36.18)];
        [bezier2Path addLineToPoint: CGPointMake(123.97, 34.41)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(115.67, 36.89)];
        [bezier2Path addCurveToPoint: CGPointMake(110.74, 36.18) controlPoint1: CGPointMake(114.12, 36.43) controlPoint2: CGPointMake(112.46, 36.18)];
        [bezier2Path addLineToPoint: CGPointMake(110.74, 37.94)];
        [bezier2Path addCurveToPoint: CGPointMake(115.16, 38.58) controlPoint1: CGPointMake(112.29, 37.94) controlPoint2: CGPointMake(113.78, 38.17)];
        [bezier2Path addLineToPoint: CGPointMake(115.67, 36.89)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(110.74, 36.18)];
        [bezier2Path addCurveToPoint: CGPointMake(97.75, 42.45) controlPoint1: CGPointMake(105.31, 36.18) controlPoint2: CGPointMake(100.51, 38.65)];
        [bezier2Path addLineToPoint: CGPointMake(99.17, 43.49)];
        [bezier2Path addCurveToPoint: CGPointMake(110.74, 37.94) controlPoint1: CGPointMake(101.58, 40.18) controlPoint2: CGPointMake(105.84, 37.94)];
        [bezier2Path addLineToPoint: CGPointMake(110.74, 36.18)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(98.7, 42.12)];
        [bezier2Path addCurveToPoint: CGPointMake(93.97, 41.47) controlPoint1: CGPointMake(97.21, 41.7) controlPoint2: CGPointMake(95.62, 41.47)];
        [bezier2Path addLineToPoint: CGPointMake(93.97, 43.24)];
        [bezier2Path addCurveToPoint: CGPointMake(98.22, 43.82) controlPoint1: CGPointMake(95.45, 43.24) controlPoint2: CGPointMake(96.88, 43.44)];
        [bezier2Path addLineToPoint: CGPointMake(98.7, 42.12)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(93.97, 41.47)];
        [bezier2Path addCurveToPoint: CGPointMake(78.53, 55.15) controlPoint1: CGPointMake(85.55, 41.47) controlPoint2: CGPointMake(78.53, 47.49)];
        [bezier2Path addLineToPoint: CGPointMake(80.29, 55.15)];
        [bezier2Path addCurveToPoint: CGPointMake(93.97, 43.24) controlPoint1: CGPointMake(80.29, 48.67) controlPoint2: CGPointMake(86.31, 43.24)];
        [bezier2Path addLineToPoint: CGPointMake(93.97, 41.47)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(78.53, 55.15)];
        [bezier2Path addCurveToPoint: CGPointMake(78.54, 55.65) controlPoint1: CGPointMake(78.53, 55.31) controlPoint2: CGPointMake(78.53, 55.48)];
        [bezier2Path addLineToPoint: CGPointMake(80.3, 55.57)];
        [bezier2Path addCurveToPoint: CGPointMake(80.29, 55.15) controlPoint1: CGPointMake(80.3, 55.43) controlPoint2: CGPointMake(80.29, 55.29)];
        [bezier2Path addLineToPoint: CGPointMake(78.53, 55.15)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(78.79, 54.99)];
        [bezier2Path addCurveToPoint: CGPointMake(77.45, 56.57) controlPoint1: CGPointMake(78.3, 55.49) controlPoint2: CGPointMake(77.86, 56.01)];
        [bezier2Path addLineToPoint: CGPointMake(78.88, 57.61)];
        [bezier2Path addCurveToPoint: CGPointMake(80.05, 56.23) controlPoint1: CGPointMake(79.23, 57.12) controlPoint2: CGPointMake(79.62, 56.66)];
        [bezier2Path addLineToPoint: CGPointMake(78.79, 54.99)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(78.41, 56.24)];
        [bezier2Path addCurveToPoint: CGPointMake(73.68, 55.59) controlPoint1: CGPointMake(76.91, 55.82) controlPoint2: CGPointMake(75.32, 55.59)];
        [bezier2Path addLineToPoint: CGPointMake(73.68, 57.35)];
        [bezier2Path addCurveToPoint: CGPointMake(77.92, 57.94) controlPoint1: CGPointMake(75.16, 57.35) controlPoint2: CGPointMake(76.59, 57.56)];
        [bezier2Path addLineToPoint: CGPointMake(78.41, 56.24)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(73.68, 55.59)];
        [bezier2Path addCurveToPoint: CGPointMake(58.24, 69.26) controlPoint1: CGPointMake(65.26, 55.59) controlPoint2: CGPointMake(58.24, 61.61)];
        [bezier2Path addLineToPoint: CGPointMake(60, 69.26)];
        [bezier2Path addCurveToPoint: CGPointMake(73.68, 57.35) controlPoint1: CGPointMake(60, 62.79) controlPoint2: CGPointMake(66.01, 57.35)];
        [bezier2Path addLineToPoint: CGPointMake(73.68, 55.59)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(58.24, 69.26)];
        [bezier2Path addCurveToPoint: CGPointMake(59.74, 75.16) controlPoint1: CGPointMake(58.24, 71.38) controlPoint2: CGPointMake(58.78, 73.38)];
        [bezier2Path addLineToPoint: CGPointMake(61.29, 74.32)];
        [bezier2Path addCurveToPoint: CGPointMake(60, 69.26) controlPoint1: CGPointMake(60.46, 72.78) controlPoint2: CGPointMake(60, 71.07)];
        [bezier2Path addLineToPoint: CGPointMake(58.24, 69.26)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(59.8, 74.22)];
        [bezier2Path addCurveToPoint: CGPointMake(57.35, 81.62) controlPoint1: CGPointMake(58.26, 76.35) controlPoint2: CGPointMake(57.35, 78.89)];
        [bezier2Path addLineToPoint: CGPointMake(59.12, 81.62)];
        [bezier2Path addCurveToPoint: CGPointMake(61.23, 75.26) controlPoint1: CGPointMake(59.12, 79.29) controlPoint2: CGPointMake(59.89, 77.11)];
        [bezier2Path addLineToPoint: CGPointMake(59.8, 74.22)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(57.35, 81.62)];
        [bezier2Path addCurveToPoint: CGPointMake(58.49, 86.77) controlPoint1: CGPointMake(57.35, 83.44) controlPoint2: CGPointMake(57.76, 85.18)];
        [bezier2Path addLineToPoint: CGPointMake(60.09, 86.04)];
        [bezier2Path addCurveToPoint: CGPointMake(59.12, 81.62) controlPoint1: CGPointMake(59.46, 84.67) controlPoint2: CGPointMake(59.12, 83.18)];
        [bezier2Path addLineToPoint: CGPointMake(57.35, 81.62)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(58.61, 85.84)];
        [bezier2Path addCurveToPoint: CGPointMake(55.59, 93.97) controlPoint1: CGPointMake(56.72, 88.1) controlPoint2: CGPointMake(55.59, 90.92)];
        [bezier2Path addLineToPoint: CGPointMake(57.35, 93.97)];
        [bezier2Path addCurveToPoint: CGPointMake(59.97, 86.97) controlPoint1: CGPointMake(57.35, 91.36) controlPoint2: CGPointMake(58.31, 88.94)];
        [bezier2Path addLineToPoint: CGPointMake(58.61, 85.84)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(55.59, 93.97)];
        [bezier2Path addCurveToPoint: CGPointMake(57.09, 99.87) controlPoint1: CGPointMake(55.59, 96.08) controlPoint2: CGPointMake(56.13, 98.08)];
        [bezier2Path addLineToPoint: CGPointMake(58.64, 99.03)];
        [bezier2Path addCurveToPoint: CGPointMake(57.35, 93.97) controlPoint1: CGPointMake(57.81, 97.49) controlPoint2: CGPointMake(57.35, 95.78)];
        [bezier2Path addLineToPoint: CGPointMake(55.59, 93.97)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(57.15, 98.93)];
        [bezier2Path addCurveToPoint: CGPointMake(54.71, 106.32) controlPoint1: CGPointMake(55.61, 101.05) controlPoint2: CGPointMake(54.71, 103.59)];
        [bezier2Path addLineToPoint: CGPointMake(56.47, 106.32)];
        [bezier2Path addCurveToPoint: CGPointMake(58.58, 99.97) controlPoint1: CGPointMake(56.47, 103.99) controlPoint2: CGPointMake(57.24, 101.81)];
        [bezier2Path addLineToPoint: CGPointMake(57.15, 98.93)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(54.71, 106.32)];
        [bezier2Path addCurveToPoint: CGPointMake(70.15, 120) controlPoint1: CGPointMake(54.71, 113.98) controlPoint2: CGPointMake(61.73, 120)];
        [bezier2Path addLineToPoint: CGPointMake(70.15, 118.24)];
        [bezier2Path addCurveToPoint: CGPointMake(56.47, 106.32) controlPoint1: CGPointMake(62.48, 118.24) controlPoint2: CGPointMake(56.47, 112.8)];
        [bezier2Path addLineToPoint: CGPointMake(54.71, 106.32)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(70.15, 120)];
        [bezier2Path addCurveToPoint: CGPointMake(72.17, 119.88) controlPoint1: CGPointMake(70.83, 120) controlPoint2: CGPointMake(71.51, 119.96)];
        [bezier2Path addLineToPoint: CGPointMake(71.97, 118.13)];
        [bezier2Path addCurveToPoint: CGPointMake(70.15, 118.24) controlPoint1: CGPointMake(71.37, 118.2) controlPoint2: CGPointMake(70.76, 118.24)];
        [bezier2Path addLineToPoint: CGPointMake(70.15, 120)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(71.3, 119.44)];
        [bezier2Path addCurveToPoint: CGPointMake(85.15, 127.06) controlPoint1: CGPointMake(73.84, 123.99) controlPoint2: CGPointMake(79.11, 127.06)];
        [bezier2Path addLineToPoint: CGPointMake(85.15, 125.29)];
        [bezier2Path addCurveToPoint: CGPointMake(72.84, 118.58) controlPoint1: CGPointMake(79.69, 125.29) controlPoint2: CGPointMake(75.04, 122.52)];
        [bezier2Path addLineToPoint: CGPointMake(71.3, 119.44)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(85.15, 127.06)];
        [bezier2Path addCurveToPoint: CGPointMake(92.45, 125.43) controlPoint1: CGPointMake(87.79, 127.06) controlPoint2: CGPointMake(90.28, 126.47)];
        [bezier2Path addLineToPoint: CGPointMake(91.7, 123.84)];
        [bezier2Path addCurveToPoint: CGPointMake(85.15, 125.29) controlPoint1: CGPointMake(89.75, 124.77) controlPoint2: CGPointMake(87.52, 125.29)];
        [bezier2Path addLineToPoint: CGPointMake(85.15, 127.06)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(91.28, 125.03)];
        [bezier2Path addCurveToPoint: CGPointMake(105.44, 133.24) controlPoint1: CGPointMake(93.68, 129.9) controlPoint2: CGPointMake(99.15, 133.24)];
        [bezier2Path addLineToPoint: CGPointMake(105.44, 131.47)];
        [bezier2Path addCurveToPoint: CGPointMake(92.87, 124.25) controlPoint1: CGPointMake(99.76, 131.47) controlPoint2: CGPointMake(94.94, 128.46)];
        [bezier2Path addLineToPoint: CGPointMake(91.28, 125.03)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(105.44, 133.24)];
        [bezier2Path addCurveToPoint: CGPointMake(107.46, 133.12) controlPoint1: CGPointMake(106.13, 133.24) controlPoint2: CGPointMake(106.8, 133.2)];
        [bezier2Path addLineToPoint: CGPointMake(107.26, 131.37)];
        [bezier2Path addCurveToPoint: CGPointMake(105.44, 131.47) controlPoint1: CGPointMake(106.66, 131.44) controlPoint2: CGPointMake(106.06, 131.47)];
        [bezier2Path addLineToPoint: CGPointMake(105.44, 133.24)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(106.59, 132.67)];
        [bezier2Path addCurveToPoint: CGPointMake(120.44, 140.29) controlPoint1: CGPointMake(109.13, 137.22) controlPoint2: CGPointMake(114.41, 140.29)];
        [bezier2Path addLineToPoint: CGPointMake(120.44, 138.53)];
        [bezier2Path addCurveToPoint: CGPointMake(108.13, 131.81) controlPoint1: CGPointMake(114.99, 138.53) controlPoint2: CGPointMake(110.33, 135.75)];
        [bezier2Path addLineToPoint: CGPointMake(106.59, 132.67)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(120.44, 140.29)];
        [bezier2Path addCurveToPoint: CGPointMake(128.35, 138.37) controlPoint1: CGPointMake(123.33, 140.29) controlPoint2: CGPointMake(126.04, 139.59)];
        [bezier2Path addLineToPoint: CGPointMake(127.53, 136.81)];
        [bezier2Path addCurveToPoint: CGPointMake(120.44, 138.53) controlPoint1: CGPointMake(125.47, 137.9) controlPoint2: CGPointMake(123.04, 138.53)];
        [bezier2Path addLineToPoint: CGPointMake(120.44, 140.29)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(127.53, 138.37)];
        [bezier2Path addCurveToPoint: CGPointMake(131.87, 139.93) controlPoint1: CGPointMake(128.86, 139.07) controlPoint2: CGPointMake(130.32, 139.6)];
        [bezier2Path addLineToPoint: CGPointMake(132.23, 138.2)];
        [bezier2Path addCurveToPoint: CGPointMake(128.35, 136.81) controlPoint1: CGPointMake(130.84, 137.91) controlPoint2: CGPointMake(129.54, 137.43)];
        [bezier2Path addLineToPoint: CGPointMake(127.53, 138.37)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(131.4, 139.66)];
        [bezier2Path addCurveToPoint: CGPointMake(143.38, 144.71) controlPoint1: CGPointMake(134.24, 142.75) controlPoint2: CGPointMake(138.57, 144.71)];
        [bezier2Path addLineToPoint: CGPointMake(143.38, 142.94)];
        [bezier2Path addCurveToPoint: CGPointMake(132.7, 138.47) controlPoint1: CGPointMake(139.04, 142.94) controlPoint2: CGPointMake(135.2, 141.18)];
        [bezier2Path addLineToPoint: CGPointMake(131.4, 139.66)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(143.38, 144.71)];
        [bezier2Path addCurveToPoint: CGPointMake(150.69, 143.08) controlPoint1: CGPointMake(146.02, 144.71) controlPoint2: CGPointMake(148.51, 144.12)];
        [bezier2Path addLineToPoint: CGPointMake(149.93, 141.49)];
        [bezier2Path addCurveToPoint: CGPointMake(143.38, 142.94) controlPoint1: CGPointMake(147.99, 142.41) controlPoint2: CGPointMake(145.76, 142.94)];
        [bezier2Path addLineToPoint: CGPointMake(143.38, 144.71)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(149.52, 142.67)];
        [bezier2Path addCurveToPoint: CGPointMake(163.68, 150.88) controlPoint1: CGPointMake(151.92, 147.55) controlPoint2: CGPointMake(157.39, 150.88)];
        [bezier2Path addLineToPoint: CGPointMake(163.68, 149.12)];
        [bezier2Path addCurveToPoint: CGPointMake(151.1, 141.89) controlPoint1: CGPointMake(157.99, 149.12) controlPoint2: CGPointMake(153.17, 146.1)];
        [bezier2Path addLineToPoint: CGPointMake(149.52, 142.67)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(163.68, 150.88)];
        [bezier2Path addCurveToPoint: CGPointMake(165.7, 150.77) controlPoint1: CGPointMake(164.36, 150.88) controlPoint2: CGPointMake(165.04, 150.84)];
        [bezier2Path addLineToPoint: CGPointMake(165.5, 149.01)];
        [bezier2Path addCurveToPoint: CGPointMake(163.68, 149.12) controlPoint1: CGPointMake(164.9, 149.08) controlPoint2: CGPointMake(164.29, 149.12)];
        [bezier2Path addLineToPoint: CGPointMake(163.68, 150.88)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(164.83, 150.32)];
        [bezier2Path addCurveToPoint: CGPointMake(178.68, 157.94) controlPoint1: CGPointMake(167.36, 154.87) controlPoint2: CGPointMake(172.64, 157.94)];
        [bezier2Path addLineToPoint: CGPointMake(178.68, 156.18)];
        [bezier2Path addCurveToPoint: CGPointMake(166.37, 149.46) controlPoint1: CGPointMake(173.22, 156.18) controlPoint2: CGPointMake(168.57, 153.4)];
        [bezier2Path addLineToPoint: CGPointMake(164.83, 150.32)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(178.68, 157.94)];
        [bezier2Path addCurveToPoint: CGPointMake(186.59, 156.01) controlPoint1: CGPointMake(181.56, 157.94) controlPoint2: CGPointMake(184.27, 157.24)];
        [bezier2Path addLineToPoint: CGPointMake(185.76, 154.45)];
        [bezier2Path addCurveToPoint: CGPointMake(178.68, 156.18) controlPoint1: CGPointMake(183.7, 155.54) controlPoint2: CGPointMake(181.28, 156.18)];
        [bezier2Path addLineToPoint: CGPointMake(178.68, 157.94)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(185.76, 156.01)];
        [bezier2Path addCurveToPoint: CGPointMake(193.68, 157.94) controlPoint1: CGPointMake(188.08, 157.24) controlPoint2: CGPointMake(190.79, 157.94)];
        [bezier2Path addLineToPoint: CGPointMake(193.68, 156.18)];
        [bezier2Path addCurveToPoint: CGPointMake(186.59, 154.45) controlPoint1: CGPointMake(191.08, 156.18) controlPoint2: CGPointMake(188.65, 155.54)];
        [bezier2Path addLineToPoint: CGPointMake(185.76, 156.01)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(193.68, 157.94)];
        [bezier2Path addCurveToPoint: CGPointMake(209.12, 144.26) controlPoint1: CGPointMake(202.09, 157.94) controlPoint2: CGPointMake(209.12, 151.92)];
        [bezier2Path addLineToPoint: CGPointMake(207.35, 144.26)];
        [bezier2Path addCurveToPoint: CGPointMake(193.68, 156.18) controlPoint1: CGPointMake(207.35, 150.74) controlPoint2: CGPointMake(201.34, 156.18)];
        [bezier2Path addLineToPoint: CGPointMake(193.68, 157.94)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(209.12, 144.26)];
        [bezier2Path addCurveToPoint: CGPointMake(209.11, 143.78) controlPoint1: CGPointMake(209.12, 144.1) controlPoint2: CGPointMake(209.11, 143.94)];
        [bezier2Path addLineToPoint: CGPointMake(207.34, 143.85)];
        [bezier2Path addCurveToPoint: CGPointMake(207.35, 144.26) controlPoint1: CGPointMake(207.35, 143.99) controlPoint2: CGPointMake(207.35, 144.13)];
        [bezier2Path addLineToPoint: CGPointMake(209.12, 144.26)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(208.2, 144.7)];
        [bezier2Path addCurveToPoint: CGPointMake(208.68, 144.71) controlPoint1: CGPointMake(208.36, 144.7) controlPoint2: CGPointMake(208.52, 144.71)];
        [bezier2Path addLineToPoint: CGPointMake(208.68, 142.94)];
        [bezier2Path addCurveToPoint: CGPointMake(208.25, 142.94) controlPoint1: CGPointMake(208.53, 142.94) controlPoint2: CGPointMake(208.39, 142.94)];
        [bezier2Path addLineToPoint: CGPointMake(208.2, 144.7)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(208.68, 144.71)];
        [bezier2Path addCurveToPoint: CGPointMake(216.59, 142.78) controlPoint1: CGPointMake(211.56, 144.71) controlPoint2: CGPointMake(214.27, 144)];
        [bezier2Path addLineToPoint: CGPointMake(215.76, 141.22)];
        [bezier2Path addCurveToPoint: CGPointMake(208.68, 142.94) controlPoint1: CGPointMake(213.7, 142.31) controlPoint2: CGPointMake(211.28, 142.94)];
        [bezier2Path addLineToPoint: CGPointMake(208.68, 144.71)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(215.76, 142.78)];
        [bezier2Path addCurveToPoint: CGPointMake(223.68, 144.71) controlPoint1: CGPointMake(218.08, 144) controlPoint2: CGPointMake(220.79, 144.71)];
        [bezier2Path addLineToPoint: CGPointMake(223.68, 142.94)];
        [bezier2Path addCurveToPoint: CGPointMake(216.59, 141.22) controlPoint1: CGPointMake(221.08, 142.94) controlPoint2: CGPointMake(218.65, 142.31)];
        [bezier2Path addLineToPoint: CGPointMake(215.76, 142.78)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(223.68, 144.71)];
        [bezier2Path addCurveToPoint: CGPointMake(239.12, 131.03) controlPoint1: CGPointMake(232.09, 144.71) controlPoint2: CGPointMake(239.12, 138.69)];
        [bezier2Path addLineToPoint: CGPointMake(237.35, 131.03)];
        [bezier2Path addCurveToPoint: CGPointMake(223.68, 142.94) controlPoint1: CGPointMake(237.35, 137.5) controlPoint2: CGPointMake(231.34, 142.94)];
        [bezier2Path addLineToPoint: CGPointMake(223.68, 144.71)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(239.12, 131.03)];
        [bezier2Path addCurveToPoint: CGPointMake(238.8, 128.24) controlPoint1: CGPointMake(239.12, 130.07) controlPoint2: CGPointMake(239.01, 129.14)];
        [bezier2Path addLineToPoint: CGPointMake(237.08, 128.64)];
        [bezier2Path addCurveToPoint: CGPointMake(237.35, 131.03) controlPoint1: CGPointMake(237.26, 129.41) controlPoint2: CGPointMake(237.35, 130.21)];
        [bezier2Path addLineToPoint: CGPointMake(239.12, 131.03)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(238.38, 129.2)];
        [bezier2Path addCurveToPoint: CGPointMake(245.29, 117.79) controlPoint1: CGPointMake(242.51, 126.77) controlPoint2: CGPointMake(245.29, 122.59)];
        [bezier2Path addLineToPoint: CGPointMake(243.53, 117.79)];
        [bezier2Path addCurveToPoint: CGPointMake(237.49, 127.68) controlPoint1: CGPointMake(243.53, 121.87) controlPoint2: CGPointMake(241.17, 125.51)];
        [bezier2Path addLineToPoint: CGPointMake(238.38, 129.2)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(245.29, 117.79)];
        [bezier2Path addCurveToPoint: CGPointMake(241.69, 109.01) controlPoint1: CGPointMake(245.29, 114.44) controlPoint2: CGPointMake(243.93, 111.38)];
        [bezier2Path addLineToPoint: CGPointMake(240.41, 110.23)];
        [bezier2Path addCurveToPoint: CGPointMake(243.53, 117.79) controlPoint1: CGPointMake(242.37, 112.3) controlPoint2: CGPointMake(243.53, 114.93)];
        [bezier2Path addLineToPoint: CGPointMake(245.29, 117.79)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(241.53, 110.36)];
        [bezier2Path addCurveToPoint: CGPointMake(247.94, 99.26) controlPoint1: CGPointMake(245.38, 107.9) controlPoint2: CGPointMake(247.94, 103.87)];
        [bezier2Path addLineToPoint: CGPointMake(246.18, 99.26)];
        [bezier2Path addCurveToPoint: CGPointMake(240.58, 108.88) controlPoint1: CGPointMake(246.18, 103.18) controlPoint2: CGPointMake(244, 106.69)];
        [bezier2Path addLineToPoint: CGPointMake(241.53, 110.36)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(247.94, 99.26)];
        [bezier2Path addCurveToPoint: CGPointMake(232.5, 85.59) controlPoint1: CGPointMake(247.94, 91.61) controlPoint2: CGPointMake(240.92, 85.59)];
        [bezier2Path addLineToPoint: CGPointMake(232.5, 87.35)];
        [bezier2Path addCurveToPoint: CGPointMake(246.18, 99.26) controlPoint1: CGPointMake(240.16, 87.35) controlPoint2: CGPointMake(246.18, 92.79)];
        [bezier2Path addLineToPoint: CGPointMake(247.94, 99.26)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(232.5, 85.59)];
        [bezier2Path addCurveToPoint: CGPointMake(228.28, 86.1) controlPoint1: CGPointMake(231.04, 85.59) controlPoint2: CGPointMake(229.63, 85.77)];
        [bezier2Path addLineToPoint: CGPointMake(228.71, 87.82)];
        [bezier2Path addCurveToPoint: CGPointMake(232.5, 87.35) controlPoint1: CGPointMake(229.91, 87.51) controlPoint2: CGPointMake(231.18, 87.35)];
        [bezier2Path addLineToPoint: CGPointMake(232.5, 85.59)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(229.38, 86.9)];
        [bezier2Path addCurveToPoint: CGPointMake(213.97, 74.12) controlPoint1: CGPointMake(228.85, 79.67) controlPoint2: CGPointMake(222.06, 74.12)];
        [bezier2Path addLineToPoint: CGPointMake(213.97, 75.88)];
        [bezier2Path addCurveToPoint: CGPointMake(227.62, 87.02) controlPoint1: CGPointMake(221.33, 75.88) controlPoint2: CGPointMake(227.17, 80.9)];
        [bezier2Path addLineToPoint: CGPointMake(229.38, 86.9)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(213.97, 74.12)];
        [bezier2Path addCurveToPoint: CGPointMake(206.61, 75.77) controlPoint1: CGPointMake(211.31, 74.12) controlPoint2: CGPointMake(208.81, 74.71)];
        [bezier2Path addLineToPoint: CGPointMake(207.38, 77.36)];
        [bezier2Path addCurveToPoint: CGPointMake(213.97, 75.88) controlPoint1: CGPointMake(209.33, 76.42) controlPoint2: CGPointMake(211.58, 75.88)];
        [bezier2Path addLineToPoint: CGPointMake(213.97, 74.12)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(207.55, 75.87)];
        [bezier2Path addCurveToPoint: CGPointMake(206.23, 74.93) controlPoint1: CGPointMake(207.13, 75.54) controlPoint2: CGPointMake(206.69, 75.22)];
        [bezier2Path addLineToPoint: CGPointMake(205.28, 76.42)];
        [bezier2Path addCurveToPoint: CGPointMake(206.45, 77.25) controlPoint1: CGPointMake(205.69, 76.68) controlPoint2: CGPointMake(206.08, 76.95)];
        [bezier2Path addLineToPoint: CGPointMake(207.55, 75.87)];
        [bezier2Path closePath];
        [fillColor2 setFill];
        [bezier2Path fill];


        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(90, 238.68)];
        [bezier3Path addCurveToPoint: CGPointMake(144.26, 183.09) controlPoint1: CGPointMake(107.5, 233.53) controlPoint2: CGPointMake(142.85, 215.21)];
        [bezier3Path addCurveToPoint: CGPointMake(135.44, 141.62) controlPoint1: CGPointMake(145.68, 150.97) controlPoint2: CGPointMake(138.97, 142.06)];
        [bezier3Path moveToPoint: CGPointMake(216.62, 243.53)];
        [bezier3Path addCurveToPoint: CGPointMake(169.41, 217.94) controlPoint1: CGPointMake(200.44, 242.65) controlPoint2: CGPointMake(168.35, 236.29)];
        [bezier3Path addCurveToPoint: CGPointMake(179.12, 166.32) controlPoint1: CGPointMake(170.47, 199.59) controlPoint2: CGPointMake(176.32, 175.88)];
        [bezier3Path addCurveToPoint: CGPointMake(187.5, 155.74) controlPoint1: CGPointMake(181.03, 162.5) controlPoint2: CGPointMake(185.38, 155.03)];
        [bezier3Path moveToPoint: CGPointMake(157.5, 163.24)];
        [bezier3Path addCurveToPoint: CGPointMake(150.88, 206.47) controlPoint1: CGPointMake(156.18, 176.62) controlPoint2: CGPointMake(153, 204)];
        [bezier3Path moveToPoint: CGPointMake(161.91, 228.97)];
        [bezier3Path addCurveToPoint: CGPointMake(166.32, 166.32) controlPoint1: CGPointMake(161.91, 221.91) controlPoint2: CGPointMake(161.03, 179.12)];
        [bezier3Path moveToPoint: CGPointMake(145.59, 200.74)];
        [bezier3Path addCurveToPoint: CGPointMake(127.5, 226.32) controlPoint1: CGPointMake(134.12, 217.5) controlPoint2: CGPointMake(132.79, 221.47)];
        [strokeColor setStroke];
        bezier3Path.lineWidth = 1;
        bezier3Path.miterLimit = 4;
        bezier3Path.lineCapStyle = kCGLineCapRound;
        [bezier3Path stroke];


        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(105.44, 232.5)];
        [bezier4Path addCurveToPoint: CGPointMake(75.88, 237.19) controlPoint1: CGPointMake(98.38, 225) controlPoint2: CGPointMake(85.06, 225.54)];
        [bezier4Path moveToPoint: CGPointMake(52.5, 242.65)];
        [bezier4Path addCurveToPoint: CGPointMake(73.68, 236.47) controlPoint1: CGPointMake(55.44, 239.26) controlPoint2: CGPointMake(63.79, 233.29)];
        [bezier4Path addCurveToPoint: CGPointMake(82.94, 240) controlPoint1: CGPointMake(83.56, 239.65) controlPoint2: CGPointMake(83.97, 240.15)];
        [bezier4Path moveToPoint: CGPointMake(174.71, 229.85)];
        [bezier4Path addCurveToPoint: CGPointMake(195.44, 229.85) controlPoint1: CGPointMake(179.12, 227.41) controlPoint2: CGPointMake(189.44, 223.99)];
        [bezier4Path addCurveToPoint: CGPointMake(200.07, 235.15) controlPoint1: CGPointMake(197.45, 231.82) controlPoint2: CGPointMake(198.95, 233.6)];
        [bezier4Path moveToPoint: CGPointMake(202.94, 241.32)];
        [bezier4Path addCurveToPoint: CGPointMake(200.07, 235.15) controlPoint1: CGPointMake(202.94, 240.41) controlPoint2: CGPointMake(202.28, 238.23)];
        [bezier4Path moveToPoint: CGPointMake(200.07, 235.15)];
        [bezier4Path addCurveToPoint: CGPointMake(230.74, 236.47) controlPoint1: CGPointMake(210.29, 232.35) controlPoint2: CGPointMake(230.74, 228.71)];
        [bezier4Path addCurveToPoint: CGPointMake(215.74, 243.53) controlPoint1: CGPointMake(230.74, 244.24) controlPoint2: CGPointMake(216.91, 242.79)];
        [strokeColor setStroke];
        bezier4Path.lineWidth = 0.5;
        bezier4Path.miterLimit = 4;
        bezier4Path.lineCapStyle = kCGLineCapRound;
        [bezier4Path stroke];
    }

}












@end
