//
//  Car.m
//  AchivingFun!!
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.make = [aDecoder decodeObjectForKey:@"make"];
        self.color = [aDecoder decodeObjectForKey:@"color"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.make forKey:@"make"];
    [aCoder encodeObject:self.color forKey:@"color"];
}



@end
