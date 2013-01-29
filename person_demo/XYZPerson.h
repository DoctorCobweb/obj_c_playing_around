//
//  XYZPerson.h
//  person_demo
//
//  Created by andre trosky on 26/01/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

//use the 'copy' attribute to avoid any mutable string assignments to first_name changing the actual value
//initially set.
@property (copy) NSString *first_name;

@property NSString *last_name;
@property NSDate *date_of_birth;

- (void)sayHello;
- (void)saySomething:(NSString *)greeting;
- (id)init:(NSString *)first_name lastName:(NSString *)last_name dob:(NSDate *)dob;
- (void)dealloc;
+ (id)person:(NSString *)first_name lastName: (NSString *)last_name dob:(NSDate *)dob;
+ (id)person;

@end
