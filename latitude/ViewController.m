//
//  ViewController.m
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "LoginViewController.h"
#import "BMapKit.h"
@interface ViewController ()<LoginViewControllerDelegate,BMKMapViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    /*
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(200, 16, 15, 15);
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(ButtonDidToch:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    */
    _mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(50, 50, 220, 360)];
    [self.view addSubview:_mapView];
    user = [[User alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"MoveToRegister"]) {
        LoginViewController* controller = (LoginViewController*)[segue destinationViewController];
        controller.delegate = self;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    if (user == nil) {
//        [self performSegueWithIdentifier:@"MoveToRegister" sender:self];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)LoginViewControllerShouldReturn:(LoginViewController *)controller {
    [self dismissViewControllerAnimated:TRUE completion:NULL];
}

- (void)viewWillAppear:(BOOL)animated {
    [_mapView viewWillAppear];
    _mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}
-(void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
}
@end
