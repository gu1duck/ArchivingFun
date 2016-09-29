//
//  ViewController.m
//  AchivingFun!!
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    Car *car = [[Car alloc] init];
//    car.make = @"Ford";
//    car.color = [UIColor redColor];
//
//    [NSKeyedArchiver archiveRootObject:car toFile:[self getFilePath]];

    Car *retrievedCar = [NSKeyedUnarchiver unarchiveObjectWithFile:[self getFilePath]];

    self.view.backgroundColor = retrievedCar.color;
    NSLog(@"%@", retrievedCar.make);


}

- (NSString*)getFilePath {
    NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *filePath = [docPath stringByAppendingPathComponent:@"car.data"];
    NSLog(@"filePath: %@", filePath);
    return filePath;
}


@end
