//
//  PKViewController.m
//  PKCustomDelegate
//
//  Created by spraveenk91 on 12/26/13.
//  Copyright (c) 2013 spraveenk91. All rights reserved.
//

#import "PKViewController.h"

@interface PKViewController () <PKCustomDelegate>

-(IBAction)goNext:(id)sender;

@end

@implementation PKViewController {
    
    IBOutlet UILabel *_resultLabel;
}

#pragma mark - Custom Delegate
-(void)resultCallBack:(NSString *)result {
    
    _resultLabel.text = [NSString stringWithFormat:@"Result - %@", result];
}

#pragma mark - Actions
-(IBAction)goNext:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PKSecondViewController *secondView = [storyboard instantiateViewControllerWithIdentifier:@"PKSecondView"];
    secondView.delegate = self;
    [self.navigationController pushViewController:secondView animated:YES];
}

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    _resultLabel.text = @"Result - ";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
