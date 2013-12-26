//
//  PKSecondViewController.m
//  PKCustomDelegate
//
//  Created by spraveenk91 on 12/26/13.
//  Copyright (c) 2013 spraveenk91. All rights reserved.
//

#import "PKSecondViewController.h"

@interface PKSecondViewController () <UITextFieldDelegate>

-(IBAction)goPrevious:(id)sender;

@end

@implementation PKSecondViewController {
    
    IBOutlet UITextField *_textField;
}

#pragma mark - UITextField Delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

#pragma mark - View Dismissal
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES]; [_textField resignFirstResponder];
}

#pragma mark - Actions
-(IBAction)goPrevious:(id)sender {
    
    if ([[_textField text] length] == 0) {
        [[[UIAlertView alloc] initWithTitle:nil message:@"Empty String" delegate:nil cancelButtonTitle:@"Okay :D" otherButtonTitles:nil, nil] show];
    } else {
        
        if ([[self delegate] respondsToSelector:@selector(resultCallBack:)]) {
            
            [[self delegate] resultCallBack:_textField.text];
        }
        [self.navigationController popViewControllerAnimated:YES];
    }
}

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
