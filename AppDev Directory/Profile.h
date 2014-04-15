//
//  Profile.h
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *year;
@property (nonatomic, strong) NSString *role;
@property (nonatomic, strong) NSString *cellphone;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSURL *image;

- (id) initWithName:(NSString *)name;
+ (id) profileWithName:(NSString *)name;

@end
