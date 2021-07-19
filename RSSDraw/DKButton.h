//
//  DKButton.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import <UIKit/UIKit.h>
#import "DKColor.h"

NS_ASSUME_NONNULL_BEGIN

@interface DKButton : UIButton

-(instancetype)initWithTitle:(NSString *)title;
-(instancetype)initWithColor:(UIColor *)color;
-(void)setHighlighted:(BOOL)highlighted;
-(void)setHighlightedColorButton;
-(void)setDefaultColorButton:(UIColor *)color;


@end

NS_ASSUME_NONNULL_END
