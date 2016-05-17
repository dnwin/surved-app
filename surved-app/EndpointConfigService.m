//
//  EndpointConfigService.m
//  surved-app
//
//  Created by dennis on 5/16/16.
//  Copyright © 2016 dennis. All rights reserved.
//

#import "EndpointConfigService.h"


@implementation EndpointConfigService

+ (NSURL *)getURLWithModel:(NSString *)model {
    // http://localhost:3000/api/v1/surveys/
    NSString *url = [NSString stringWithFormat:@"%@%@%@", currentURI, currentRoot, model];
    return [NSURL URLWithString: url];
}

+ (NSURL *)getURLWithModel:(NSString *)model forId:(NSUInteger)id {
    return [EndpointConfigService getURLWithModel: model];
}

+ (NSURL *)getCurrentURI {
    return [NSURL URLWithString:currentURI];
}


@end
