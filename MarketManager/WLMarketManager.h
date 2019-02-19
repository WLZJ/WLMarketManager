//
//  WLMarketManager.h
//  WLMarketManager
//
//  Created by yuyu on 2019/2/19.
//  Copyright © 2019年 FanLai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    WLMarketSizeTypeFour,
    WLMarketSizeTypeSix,
    WLMarketSizeTypePlus,
    WLMarketSizeTypeX,
    WLMarketSizeTypeXR,
    WLMarketSizeTypeXMax
} WLMarketSizeType;

@interface WLMarketManager : NSObject

+ (instancetype)showWLMarketManager;

- (CGFloat)translationSize:(CGFloat)pxSize;

- (CGFloat)translationSize:(CGFloat)pxSize marketSizeType:(WLMarketSizeType)marketSizeType;

+ (BOOL)isIPhoneXType;

+ (CGFloat)safeAreaInsetsBottom;

@end

