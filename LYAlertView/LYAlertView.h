//
//  LYAlertView.h
//  LYAlertView
//
//  Created by 001s on 2018/6/9.
//  Copyright © 2018年 LyongY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYAlertView : UIView


@property (nonatomic, copy) LYAlertView* (^addTitle)(NSString *title);

@property (nonatomic, copy) LYAlertView* (^addToWindow)();
@end
