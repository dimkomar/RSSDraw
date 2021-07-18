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
        self.frame = CGRectMake(0, 0, 156, 42); //defaul size
        [self.titleLabel setFont: [UIFont fontWithName:@"Montserrat-Medium" size:18]];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        [self.layer setBackgroundColor:[[UIColor whiteColor] CGColor]];
        [self.layer setShadowOpacity:1.0];
        [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [self.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
        [self.layer setShadowRadius:8.0];
        [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [self.layer setShadowRadius:1.25];
        [self.layer setShadowOpacity:0.2];
        self.layer.cornerRadius = 10.0;
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 21, 5, 21);
        [self clipsToBounds];

        //highlited state
        //[self setTitleColor: [self.currentTitleColor colorWithAlphaComponent:0.4] forState:UIControlStateHighlighted];
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

@end
