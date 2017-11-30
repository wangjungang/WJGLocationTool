//
//  WJGLocationManager.h
//  WJGLocationTool
//
//  Created by 王俊钢 on 2017/11/30.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//@interface WJGLocationManager : NSObject
//
//@end

#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class WJGLocationManager,WJGCityModel,CLPlacemark,CLLocation;
@protocol WJGLocationManagerDelegate;

@interface WJGLocationManager : NSObject
@property (nonatomic, weak) id<WJGLocationManagerDelegate> delegate;
+ (WJGLocationManager *)locationManager;
- (void)startLocate;
- (void)stopLocate;
- (CLPlacemark *)currentPlaceMark;
@end

@protocol WJGLocationManagerDelegate <NSObject>
- (void)locationManagerDidLocated:(WJGCityModel *)cityModel location:(CLLocation *)location success:(BOOL)success;
@end
