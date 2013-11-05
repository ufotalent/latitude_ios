//
//  RegisterViewController.h
//  latitude
//
//  Created by ufotalent on 11/5/13.
//  Copyright (c) 2013 413. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LoginViewControllerDelegate;
@interface LoginViewController : UIViewController
- (IBAction)LoginClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) id<LoginViewControllerDelegate> delegate;
- (IBAction)GlobalButtonTouched:(id)sender;

@end


@protocol LoginViewControllerDelegate  <NSObject>
- (void)LoginViewControllerShouldReturn:(LoginViewController*) controller;
@end