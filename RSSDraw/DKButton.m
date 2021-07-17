//
//  DKButton.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKButton.h"

@implementation DKButton

-(instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 156, 42); //defaul size
        [self.titleLabel setFont: [UIFont systemFontOfSize:20 weight:UIFontWeightSemibold]];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 2.0;
        self.layer.cornerRadius = 10.0;
        [self clipsToBounds];
        
        // highlited state 
        [self setTitleColor: [self.currentTitleColor colorWithAlphaComponent:0.4] forState:UIControlStateHighlighted];
    }
    return self;
}

-(void)setHighlighted:(BOOL)highlighted {
    
    UIColor *color = [UIColor greenColor];
    
    [super setHighlighted:highlighted];
    
    if (highlighted) {
        self.backgroundColor = [color colorWithAlphaComponent:0.2];
    }
    else {
        self.backgroundColor = [UIColor whiteColor];
    }
}

@end
