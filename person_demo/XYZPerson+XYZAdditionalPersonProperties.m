//
//  NSObject+XYZAdditionalPersonProperties.m
//  person_demo
//
//  Created by andre trosky on 29/01/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import "XYZPerson+XYZAdditionalPersonProperties.h"

@implementation XYZPerson (XYZAdditionalPersonProperties)

- (void)xyz_showFirstNameThreeTimes {
    NSLog(@"%@ %@ %@", self.first_name, self.first_name, self.first_name);
}

@end
