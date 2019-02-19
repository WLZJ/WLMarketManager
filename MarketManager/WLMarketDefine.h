//
//  WLMarketDefine.h
//  WLMarketManager
//
//  Created by yuyu on 2019/2/19.
//  Copyright © 2019年 FanLai. All rights reserved.
//

#ifndef WLMarketDefine_h
#define WLMarketDefine_h


#import "WLMarketManager.h"
#pragma mark - configuration(配置)

//默认的设计尺寸
#define DefuleWidth WLMarketSizeTypeSix

//放大模式下的 放大比例
#define EnlargingScale 1.0

#pragma mark - define(定义)


#define __kIsVertical__  ([[UIScreen mainScreen] bounds].size.width < [[UIScreen mainScreen] bounds].size.height)

//各个机型默认宽度大小
#define WLDefule35InchScreenWidth     (__kIsVertical__?320.0:480.0)
#define WLDefule40InchScreenWidth     (__kIsVertical__?320.0:568.0)
#define WLDefule47InchScreenWidth     (__kIsVertical__?375.0:667.0)
#define WLDefule55InchScreenWidth     (__kIsVertical__?414.0:736.0)
#define WLDefule58InchScreenWidth     (__kIsVertical__?375.0:812.0)
#define WLDefule61InchScreenWidth     (__kIsVertical__?414.0:896.0)
#define WLDefule65InchScreenWidth     (__kIsVertical__?414.0:896.0)
//传入一个px尺寸  输出一个按照屏幕适配的尺寸(默认尺寸)
#define __kNewSize(pxSize) [[WLMarketManager showWLMarketManager]translationSize:pxSize]
#define __kNewFont(pxSize) [UIFont systemFontOfSize:__kNewSizeSix(pxSize)]
#define __kNewBoldFont(pxSize) [UIFont boldSystemFontOfSize:__kNewSizeSix(pxSize)]

#define __kNewCGSizeMake(pxWidth,pxHeight) CGSizeMake(__kNewSize(pxWidth), __kNewSize(pxHeight))
#define __kNewCGRectMake(pxX,pxY,pxWidth,pxHeight) CGRectMake(__kNewSize(pxX), __kNewSize(pxY), __kNewSize(pxWidth), __kNewSize(pxHeight))
// 4,5.(320)
#define __kNewSizeFour(pxSize) [[WLMarketManager showWLMarketManager]translationSize:pxSize marketSizeType:WLMarketSizeTypeFour]

// 6.(375)
#define __kNewSizeSix(pxSize) [[WLMarketManager showWLMarketManager]translationSize:pxSize marketSizeType:WLMarketSizeTypeSix]

// plus.(414)
#define __kNewSizePlus(pxSize) [[WLMarketManager showWLMarketManager]translationSize:pxSize marketSizeType:WLMarketSizeTypePlus]

//传入一个pt尺寸  输出一个按照屏幕适配的尺寸(默认尺寸)
#define __kSize(ptSize) __kNewSize(ptSize *2)
#define __kFont(ptSize) [UIFont systemFontOfSize:__kSizeSix(ptSize)]
#define __kBoldFont(ptSize) [UIFont boldSystemFontOfSize:__kSizeSix(ptSize)]

#define __kCGSizeMake(ptWidth,ptHeight) CGSizeMake(__kSize(ptWidth), __kSize(ptHeight))
#define __kCGRectMake(ptX,ptY,ptWidth,ptHeight) CGRectMake(__kSize(ptX), __kSize(ptY), __kSize(ptWidth), __kSize(ptHeight))
// 4,5.(320)
#define __kSizeFour(ptSize) [[WLMarketManager showWLMarketManager]translationSize:(ptSize*2) marketSizeType:WLMarketSizeTypeFour]

// 6.(375)
#define __kSizeSix(ptSize) [[WLMarketManager showWLMarketManager]translationSize:(ptSize*2 )marketSizeType:WLMarketSizeTypeSix]

// plus.(414)
#define __kSizePlus(ptSize) [[WLMarketManager showWLMarketManager]translationSize:(ptSize*2) marketSizeType:WLMarketSizeTypePlus]


#endif /* WLMarketDefine_h */
