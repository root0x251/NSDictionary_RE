//
//  Student.h
//  Dictionary_Re
//
//  Created by Slava on 24.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *heSay;

- (void) studentSey;

@end
