//
//  AuthenticationService.h
//  surved-app
//
//  Created by dennis on 5/16/16.
//  Copyright © 2016 dennis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AuthenticationService : NSObject

- (NSDictionary *) currentUser;
- (void)saveToken: (NSString *) token;
- (NSString *)getToken;
- (bool)isLoggedIn;

- (void)saveToken: (NSString *)token;
@end

