//
//  WJGCityModel.m
//  WJGLocationTool
//
//  Created by 王俊钢 on 2017/11/30.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "WJGCityModel.h"

@implementation WJGCityModel
+ (instancetype)cityModelWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude{
    WJGCityModel *model = [[WJGCityModel alloc]initWithCity:city longitude:longitude latitude:latitude];
    return model;
}
- (instancetype)initWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude{
    if(self = [super init]){
        self.city = city;
        self.longitude = longitude;
        self.latitude = latitude;
    }
    return self;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"cityName:%@,longitude:%f,latitude:%f",self.city,self.longitude,self.latitude];
}
@end
