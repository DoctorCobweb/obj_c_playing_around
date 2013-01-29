//
//  XYZPerson.m
//  person_demo
//
//  Created by andre trosky on 26/01/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (void)sayHello {
    [self saySomething:@"gday"];
}

- (void)saySomething:(NSString *)greeting {
    
            NSLog(@"%@ %@ %@", greeting, self.first_name, self.last_name);
}

- (id) init:(NSString *)first_name lastName:(NSString *)last_name dob:(NSDate *)dob {
    self = [super init];
    
    if (self) {
        //set instance variables here
        _first_name = first_name;
        _last_name = last_name;
        _date_of_birth = dob;
        
    }
    
    return self;

}

//empty init method which is used when a person object is created w/out supplying parameters.
- (id) init {
    self = [super init];
    
    if (self) {
        _first_name = @"DEFAULT_FIRST_NAME";
        _last_name = @"DEFAULT_LAST_NAME";
        _date_of_birth = [NSDate date];
    
    }
    
    return self;
}



//default person factory method
+ (id) person:(NSString *)first_name lastName:(NSString *)last_name dob:(NSDate *)dob {
    //using self in factory methods allows you to save writing overriden
    //versions of the method for subclasses of XYZPerson.
    return [[self alloc] init:first_name lastName:last_name dob:dob];
}

//if person is called to make an object w/out supplying parameters,
//use this factory method which set default property values.
+ (id) person {
    return [[self alloc] init];
}

- (void) dealloc {
    NSLog(@"XYZPerson is being deallocated.");
}


@end
