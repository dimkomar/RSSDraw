//
//  DKPaletteView.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/18/21.
//

#import "DKPaletteView.h"

@implementation DKPaletteView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 8;
        [self.layer setBackgroundColor:[[UIColor blackColor] CGColor]];
    }
    return self;
}

@end
