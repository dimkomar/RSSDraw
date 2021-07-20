//
//  DKDrawingsView.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DKDrawingsView : UIView

@property (strong, nonatomic) NSMutableArray <UIButton *> *colorPalette;
@property (assign, nonatomic) NSNumber *currentDrawing;


@end

NS_ASSUME_NONNULL_END
