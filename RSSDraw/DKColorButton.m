//
//  DKColorButton.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/19/21.
//

#import "DKColorButton.h"
#import "DKButton.h"

@implementation DKColorButton

- (instancetype)initWithColor:(UIColor *)color {
    self = [super init];
    if (self) {
        self.frame = CGRectMake(8, 8, 24, 24);
        [self.layer setBackgroundColor:[color CGColor]];
        [self.layer setCornerRadius:10.0f];
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowRadius:1.0f];
        [self.layer setShadowOpacity:1.0f];
        [self.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    }
    return self;
}

@end
