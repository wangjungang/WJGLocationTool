//
//  WJGCityModel.h
//  WJGLocationTool
//
//  Created by 王俊钢 on 2017/11/30.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WJGCityModel : NSObject
/**城市名称*/
@property (nonatomic,copy) NSString *city;
/**经度*/
@property (nonatomic,assign) double longitude;
/**纬度*/
@property (nonatomic,assign) double latitude;
- (instancetype)initWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude;
+ (instancetype)cityModelWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude;
@end
