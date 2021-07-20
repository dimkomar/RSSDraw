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
        //тут нежен аррай с сетом
    }
    return self;
}


-(void)drawTree {

}












@end
