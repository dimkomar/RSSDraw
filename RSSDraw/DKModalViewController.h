//
//  DKModalViewController.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/18/21.
//

#import <UIKit/UIKit.h>
#import "DKButton.h"
#import "DKColorButtonView.h"


NS_ASSUME_NONNULL_BEGIN

@interface DKModalViewController : UIViewController

@property (nonatomic, strong) DKButton *save;
@property (nonatomic, strong) NSString* setModalViewPresentation;
@property (nonatomic, strong) NSMutableString* timerValue;
@property (nonatomic, strong) UILabel *resultValue;

-(id)init:(NSString *) param;

@end

NS_ASSUME_NONNULL_END
