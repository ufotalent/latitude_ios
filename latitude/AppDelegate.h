//
//  AppDelegate.h
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    BMKMapManager* _mapManager;
}

@property (strong, nonatomic) UIWindow *window;

@end
