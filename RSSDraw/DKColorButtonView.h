//
//  DKColorButtonView.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/19/21.
//

#import <UIKit/UIKit.h>
#import "DKColorButton.h"



NS_ASSUME_NONNULL_BEGIN

@interface DKColorButtonView : UIView

- (instancetype)initWithFrame:(CGRect)frame andColor:(UIColor*)color;

@property(strong,nonatomic) DKColorButton* button;


@end

NS_ASSUME_NONNULL_END
