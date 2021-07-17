//
//  DKButton.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DKButton : UIButton

-(instancetype)initWithTitle:(NSString *)title;
-(void)setHighlighted:(BOOL)highlighted;

@end

NS_ASSUME_NONNULL_END
