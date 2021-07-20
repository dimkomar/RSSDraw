//
//  DKColorButtonView.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/19/21.
//

#import "DKColorButtonView.h"
#import "DKColorButton.h"

@implementation DKColorButtonView

-(instancetype)initWithFrame:(CGRect)frame andColor:(UIColor *)color {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 8;
        [self.layer setBackgroundColor:[[UIColor whiteColor] CGColor]];
        [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [self.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
        [self.layer setShadowRadius:4.25];
        [self.layer setShadowOpacity:0.25];
        self.button = [[DKColorButton alloc] initWithColor:color];
        [self addSubview:self.button];
    }
    return self;
}

@end
