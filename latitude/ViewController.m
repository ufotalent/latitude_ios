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
@interface ViewController ()<LoginViewControllerDelegate>

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
        [self performSegueWithIdentifier:@"MoveToRegister" sender:self];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)LoginViewControllerShouldReturn:(LoginViewController *)controller {
    [self dismissViewControllerAnimated:TRUE completion:NULL];
}


@end
