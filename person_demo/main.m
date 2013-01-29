//
//  main.m
//  person_demo
//
//  Created by andre trosky on 26/01/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZPerson+XYZAdditionalPersonProperties.h"
#import "XYZShoutingPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        //using a __weak variable for assignment causes the GC to deallocate the object after initialization!
        //results in person_a being set to 'nil'. BAD.
        //XYZPerson __weak *person_a = [[XYZPerson alloc] init];
        NSMutableString *mutableStringDemo = [NSMutableString stringWithString:@"andre"];
        
        //instead use a stongly referenced variable, which is the default.
        XYZPerson *person_a = [[XYZPerson alloc] init];
        if (person_a) {
        person_a.first_name = mutableStringDemo;
        person_a.last_name = @"trosky";
        
        //mutate the string to see how it alters the XYZPerson object's first_name.
        [mutableStringDemo appendString:@"onnie"];
        
        [person_a sayHello];
        } else {
            NSLog(@"person_a is nil");
        }
        
        
        //use the custome init method of XYZPerson to initialize the object.
        //it will set the first, last name and DOB of the person.
        XYZPerson *person_aa = [[XYZPerson alloc] init:@"doctor" lastName:@"Cobweb" dob:[NSDate date]];
        
        //log to screen to check if it worked.
        NSLog(@"First Name: %@ and Last Name: %@, and DOB: %@", person_aa.first_name, person_aa.last_name,
                                                                person_aa.date_of_birth);

        [person_aa xyz_showFirstNameThreeTimes ];
        
        //setting an object to nil will cause the 'dealloc' method in XYXPerson to be called. It's
        //been overriden to log a message to show the method being actually called.
        person_aa = nil;
        
        XYZShoutingPerson *person_b = [[XYZShoutingPerson alloc] init];
        [person_b saySomething:@"should be in uppercase"];
        person_b = nil;
        
        //using factory method to make an object.
        XYZShoutingPerson *person_c = [XYZShoutingPerson person];
        [person_c saySomething:@"should be in uppercase also"];
        NSLog(@"Default Properties= First Name: %@, Last Name: %@ and Date of Birth: %@", person_c.first_name, person_c.last_name,
              person_c.date_of_birth);
        person_c = nil;
        
        //if you dont assign the value, it is automatically set to nil
        XYZPerson *person_d;
        
        if (person_d == nil) {
            NSLog(@"person_d is nill.");
        }
        
    }
    return 0;
}

