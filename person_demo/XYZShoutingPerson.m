//
//  XYZShoutingClassPerson.m
//  person_demo
//
//  Created by andre trosky on 26/01/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting {
    NSString *uppercaseGreeting = [greeting uppercaseString];
    NSLog(@"%@.", uppercaseGreeting);
}

@end
