//
//  Profile.h
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *year;
@property(strong, nonatomic) NSString *image;
@property(strong, nonatomic) NSString *role;
- (id) initWithName:(NSString *)name;
+ (id) profileWithName:(NSString *)name;
- (NSURL*) imageURL;

@end
