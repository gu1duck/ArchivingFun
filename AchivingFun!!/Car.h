//
//  Car.h
//  AchivingFun!!
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Car : NSObject <NSCoding>

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) UIColor *color;

@end
