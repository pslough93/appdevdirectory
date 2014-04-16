//
//  Profile.m
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import "Profile.h"

@implementation Profile

- (id) initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        [self setName:name];
        self.year = nil;
        self.image = nil;
    };
    return self;
};

+ (id) profileWithName:(NSString *)name{
    return [[self alloc] initWithName:name];
};

- (NSURL*) imageURL{
    return [NSURL URLWithString:self.image];
};


@end
