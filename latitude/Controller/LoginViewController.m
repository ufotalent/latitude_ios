//
//  RegisterViewController.m
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController()<UITextFieldDelegate>

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.jpg"]]];
    self.passwordTextField.delegate = self;
    self.userNameTextField.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)performLogin {
    [self.delegate LoginViewControllerShouldReturn:self];
}

- (IBAction)LoginClicked:(id)sender {
    [self performLogin];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.passwordTextField) {
        [self performLogin];
    } else if (textField == self.userNameTextField) {
        [self.userNameTextField resignFirstResponder];
        [self.passwordTextField becomeFirstResponder];
    }
    return NO;
}
- (IBAction)GlobalButtonTouched:(id)sender {
    [self.userNameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}
@end
