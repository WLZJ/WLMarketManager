//
//  WLMarketManager.m
//  WLMarketManager
//
//  Created by yuyu on 2019/2/19.
//  Copyright © 2019年 FanLai. All rights reserved.
//

#import "WLMarketManager.h"
#import "WLMarketDefine.h"
#import "sys/utsname.h"
#import <objc/runtime.h>

static NSString      *_deviceName;

@interface WLMarketManager ()

@property (nonatomic, assign) CGFloat nowDefuleWidth;

@end

@implementation WLMarketManager

static id _showWLMarketManagerInstance;
+ (instancetype)showWLMarketManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _showWLMarketManagerInstance = [[[self class] alloc] init];
    });
    return _showWLMarketManagerInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        _deviceName = [self getIphoeXH:[self getCurrentDevice]];
        _nowDefuleWidth = DefuleWidth;
    }
    return self;
}

- (CGFloat)translationSize:(CGFloat)pxSize marketSizeType:(WLMarketSizeType)marketSizeType {
    CGFloat newPxSize = pxSize/2.0;
    CGFloat translationSize = 0;
    CGFloat marketSize = [self getSizeWithMarketSizeType:marketSizeType];
    
    //bool 是否竖屏
    //竖屏?[[UIScreen mainScreen] bounds].size.width == WLDefule35InchScreenWidth:[[UIScreen mainScreen] bounds].size.height == WLDefule35InchScreenWidth
    
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule35InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone 4"])
        {
            translationSize = WLDefule35InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule35InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule40InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone 5"])
        {
            translationSize = WLDefule40InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule40InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    
    
    
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule47InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone 6"])
        {
            translationSize = WLDefule47InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule47InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule55InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone 6 Plus"])
        {
            translationSize = WLDefule55InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule55InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule58InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone X"])
        {
            translationSize = WLDefule58InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule58InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule61InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone XR"])
        {
            translationSize = WLDefule61InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule61InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    if ([[UIScreen mainScreen] bounds].size.width == WLDefule65InchScreenWidth)
    {
        if ([_deviceName isEqualToString:@"iPhone XS Max"])
        {
            translationSize = WLDefule65InchScreenWidth/marketSize*newPxSize;
        }
        else
        {
            //放大模式(暂未考虑)
            translationSize = WLDefule65InchScreenWidth/marketSize*newPxSize*EnlargingScale;
        }
    }
    
    return translationSize;
}

- (CGFloat)translationSize:(CGFloat)pxSize
{
    return [self translationSize:pxSize marketSizeType:DefuleWidth];
}

//获得设备型号
- (NSString *)getCurrentDevice
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4s";
    
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone8,3"]) return @"iPhone SE";
    if ([platform isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
    
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    
    if ([platform isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    
    if ([platform isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    
    if ([platform isEqualToString:@"iPhone10,3"] || [platform isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([platform isEqualToString:@"iPhone11,8"]) return @"iPhone XR";
    if ([platform isEqualToString:@"iPhone11,2"]) return @"iPhone XS";
    if ([platform isEqualToString:@"iPhone11,4"] || [platform isEqualToString:@"iPhone11,6"]) return @"iPhone XS Max";
    
    
    if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G (A1288)";
    if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G (A1421/A1509)";
    
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad 1G (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2 (A1395+New Chip)";
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini 1G (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini 1G (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini 1G (A1455)";
    
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3 (A1430)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (A1476)";
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2G (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2G (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2G (A1491)";
    
    if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    return platform;
}

- (NSString *)getIphoeXH:(NSString *)platform
{
    if ([platform hasPrefix:@"iPhone 4"] ||[platform hasPrefix:@"iPhone 4s"]){
        return @"iPhone 4";
    }else if([platform hasPrefix:@"iPhone 5"] || [platform hasPrefix:@"iPhone SE"] || [platform hasPrefix:@"iPhone 5c"] || [platform hasPrefix:@"iPhone 5s"]){
        return @"iPhone 5";
    }else if([platform hasPrefix:@"iPhone 6 Plus"] || [platform hasPrefix:@"iPhone6sPlus"] || [platform hasPrefix:@"iPhone 7 Plus"] || [platform hasPrefix:@"iPhone 8 Plus"]){
        return @"iPhone 6 Plus";
    }else if([platform hasPrefix:@"iPhone X"] || [platform hasPrefix:@"iPhone XS"]){
        return @"iPhone X";
    }else if([platform hasPrefix:@"iPhone XR"]){
        return @"iPhone XR";
    }else if([platform hasPrefix:@"iPhone XS Max"]){
        return @"iPhone XS Max";
    }else{
        return @"iPhone 6";
    }
}

- (CGFloat)getSizeWithMarketSizeType:(WLMarketSizeType)marketSizeType {
    CGFloat size = 0;
    switch (marketSizeType) {
        case WLMarketSizeTypeFour:
        {
            size = WLDefule35InchScreenWidth;
        }
            break;
        case WLMarketSizeTypeSix:
        {
            size = WLDefule47InchScreenWidth;
        }
            break;
        case WLMarketSizeTypePlus:
        {
            size = WLDefule55InchScreenWidth;
        }
            break;
        case WLMarketSizeTypeX:
        {
            size = WLDefule58InchScreenWidth;
        }
            break;
        case WLMarketSizeTypeXR:
        {
            size = WLDefule61InchScreenWidth;
        }
            break;
        case WLMarketSizeTypeXMax:
        {
            size = WLDefule65InchScreenWidth;
        }
            break;
            
        default:
            break;
    }
    return size;
}
+ (BOOL)isIPhoneXType{
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets safeAreaInsets = [UIApplication sharedApplication].keyWindow.safeAreaInsets;
        return safeAreaInsets.bottom != 0;
    } else {
        return NO;
    }
}
+ (CGFloat)safeAreaInsetsBottom{
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets safeAreaInsets = [UIApplication sharedApplication].keyWindow.safeAreaInsets;
        return safeAreaInsets.bottom;
    } else {
        return 0;
    }
}

@end
