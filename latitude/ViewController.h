//
//  ViewController.h
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "BMapKit.h"
@interface ViewController : UIViewController {
    User* user;
    BMKMapView *_mapView;
}

@end
