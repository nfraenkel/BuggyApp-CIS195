//
//  AYKViewController.h
//  BuggyApp
//
//  Created by Ayaka Nonaka on 10/14/12.
//  Copyright (c) 2012 Ayaka Nonaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AYKViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

- (IBAction)sortButtonPress:(id)sender;

@end
