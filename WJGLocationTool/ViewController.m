//
//  ViewController.m
//  WJGLocationTool
//
//  Created by 王俊钢 on 2017/11/30.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "WJGLocationManager.h"
#import "WJGCityModel.h"

@interface ViewController ()<WJGLocationManagerDelegate>
@property (nonatomic, strong) WJGLocationManager *manager;
@property (weak, nonatomic) IBOutlet UITextField *cityLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.manager = [WJGLocationManager locationManager];
    self.manager.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startClick:(id)sender {
    [self.manager startLocate];
}
- (IBAction)stopClick:(id)sender {
    [self.manager stopLocate];
}
#pragma mark - WJGLocationManagerDelegate
- (void)locationManagerDidLocated:(WJGCityModel *)cityModel location:(CLLocation *)location success:(BOOL)success{
    self.cityLabel.text = cityModel.city;
}
@end
