//
//  HttpService.m
//  surved-app
//
//  Created by dennis on 5/16/16.
//  Copyright © 2016 dennis. All rights reserved.
//

#import "HttpService.h"

@implementation HttpService

+ (NSURLSession *)getDataSession {
    static NSURLSession *session = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    });
    return session;
}

+ (void)getWithUrl:(NSURL *)url completion:(void (^)(NSData *, NSError *))completionHandler {
    NSURLSessionDataTask *dataTask = [[HttpService getDataSession]
                                      dataTaskWithURL:url
                                      completionHandler:
    ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (completionHandler == nil) return;
        if (error) {
            completionHandler(nil, error);
        }
        completionHandler(data, nil);
    }];
    
    // Do the call
    [dataTask resume];
}




@end
