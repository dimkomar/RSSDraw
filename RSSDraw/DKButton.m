//
//  DKButton.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKButton.h"
#import "DKColor.h"


@implementation DKButton

-(instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        [self setFrame:CGRectMake(222, 222, 222, 222)]; //defaul size
        [self.titleLabel setFont: [UIFont fontWithName:@"Montserrat-Medium" size:18.0f]];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        [self.layer setBackgroundColor:[[UIColor whiteColor] CGColor]];
        [self.layer setShadowOpacity:1.0];
        [self.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
        [self.layer setShadowRadius:8.0];
        [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [self.layer setShadowRadius:1.25];
        [self.layer setShadowOpacity:0.2];
        self.layer.cornerRadius = 10.0;
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 21, 5, 21);
    }
    return self;
}

-(void)setHighlighted:(BOOL)highlighted {
    UIColor *color = [UIColor lightGreenSea];
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.backgroundColor = [color colorWithAlphaComponent:0.2];
    }
    else {
        self.backgroundColor = [UIColor whiteColor];
    }
}

//MARK: - Colored buttons
-(instancetype)initWithColor:(UIColor *)color {
    self = [super init];
    if (self) {
        [self setFrame:CGRectMake(8, 8, 24, 24)];
        [self.layer setCornerRadius:10.0f];
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowRadius:1.0f];
        [self.layer setShadowOpacity:1.0f];
        [self.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

-(void)setHighlightedColorButton {
    [self setFrame:CGRectMake(2, 2, 36, 36)];
    [self.layer setCornerRadius:8.0f];
}

-(void)setDefaultColorButton:(UIColor *)color {
    self.backgroundColor = color;
    [self setFrame:CGRectMake(8, 8, 24, 24)];
    [self.layer setCornerRadius:6.0f];
}

@end
