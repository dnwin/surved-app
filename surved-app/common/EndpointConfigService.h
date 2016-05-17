//
//  EndpointConfigService.h
//  surved-app
//
//  Created by dennis on 5/16/16.
//  Copyright © 2016 dennis. All rights reserved.
//

#import <Foundation/Foundation.h>

// CONSTANTS
static const NSString *currentURI = @"http://localhost:3000/";
static const NSString *currentRoot = @"api/v1/";

@interface EndpointConfigService : NSObject

// Returns the URL for the current backend.
+ (NSURL *)getURLWithModel: (NSString *)model;
// Returns the full url with a model and id.
+ (NSURL *)getURLWithModel: (NSString *)model forId: (NSUInteger)id;
// Returns the URI
+ (NSURL *)getCurrentURI;


@end
