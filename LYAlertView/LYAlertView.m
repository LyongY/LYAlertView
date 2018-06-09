//
//  LYAlertView.m
//  LYAlertView
//
//  Created by 001s on 2018/6/9.
//  Copyright © 2018年 LyongY. All rights reserved.
//

#import "LYAlertView.h"
#import <Masonry/Masonry.h>

@interface LYAlertView ()
@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIView *listView;
@property (nonatomic, strong) UIView *buttonView;
@end

@implementation LYAlertView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        _bgView = [[UIView alloc] init];
        _bgView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_bgView];
        [_bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self);
            make.width.equalTo(self).multipliedBy(0.7).priorityLow();
            make.width.lessThanOrEqualTo(@350);
            make.width.greaterThanOrEqualTo(@300);
        }];
        
        _listView = [[UIView alloc] init];
        _listView.backgroundColor = [UIColor lightGrayColor];
        [_bgView addSubview:_listView];
        [_listView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(self.bgView).insets(UIEdgeInsetsMake(10, 10, 0, 10));
            make.height.equalTo(@10).priorityLow();
        }];
        
        _buttonView = [[UIView alloc] init];
        _buttonView.backgroundColor = [UIColor lightGrayColor];
        [_bgView addSubview:_buttonView];
        [_buttonView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.listView.mas_bottom).offset(10);
            make.left.right.bottom.equalTo(self.bgView).insets(UIEdgeInsetsMake(0, 10, 10, 10));
            make.height.equalTo(@10).priorityLow();
        }];
        
    }
    return self;
}


- (LYAlertView *(^)(NSString *))addTitle {
    return ^(NSString *title){
        UILabel *label = [[UILabel alloc] init];
        label.text = title;
        label.backgroundColor = [UIColor redColor];
        [self.listView addSubview:label];
        
        UIView *lastView = nil;
        for (UIView *currentView in self.listView.subviews) {
            [currentView mas_remakeConstraints:^(MASConstraintMaker *make) {
                if (!lastView) {
                    make.top.equalTo(@0);
                } else {
                    make.top.equalTo(lastView.mas_bottom).offset(10);
                }
                make.left.right.equalTo(@0);
                if (currentView == self.listView.subviews.lastObject) {
                    make.bottom.equalTo(@0);
                }
            }];
            lastView = currentView;
        }        
        return self;
    };
}

- (LYAlertView *(^)())addToWindow {
    return ^(){
        UIWindow *window = [[UIApplication sharedApplication].delegate window];
        [window addSubview:self];
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(window);
        }];
        return self;
    };
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
