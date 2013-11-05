//
//  User.h
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {
    UInt64 UserToken;
    NSString* Username;
}
- (id)init;
@end
