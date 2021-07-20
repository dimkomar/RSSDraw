//
//  DKViewDelegate.h
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/20/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DKViewDelegate <NSObject>

- (void) hideContentController: (UIViewController*) content;

@end

NS_ASSUME_NONNULL_END
