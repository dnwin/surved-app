//
//  HttpService.h
//  surved-app
//
//  Created by dennis on 5/16/16.
//  Copyright © 2016 dennis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpService : NSObject

// Returns the current NSURLSession
+ (NSURLSession *)getDataSession;

// Performs a GET request.
+ (void)getWithUrl: (NSURL *)url completion:(void (^)(NSData *data, NSError *error)) completionHandler;


@end
