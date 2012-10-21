//
//  AYKViewController.m
//  BuggyApp
//
//  Created by Ayaka Nonaka on 10/14/12.
//  Copyright (c) 2012 Ayaka Nonaka. All rights reserved.
//

#import "AYKViewController.h"

static NSString *const DELIMETER = @" ";

@interface AYKViewController ()

@end

@implementation AYKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sortButtonPress:(id)sender {
    
    BOOL badInput = NO;
    
    NSString* inputString = self.inputField.text;
    
    // user put nothing: bad input
    if ([self.inputField.text isEqualToString:@""]) {
        badInput = YES;
    }
    
    
    NSArray *numberStrings = [inputString componentsSeparatedByString:DELIMETER];
    NSMutableArray *numbers = [NSMutableArray array];
    
    for (NSString *numberString in numberStrings) {
        // take care of a bunch of spaces
        if ([numberString isEqualToString:@""]){
            continue;
        }
        NSInteger number = [numberString intValue];
        // take care of all cases where we don't just have one digit 0-9
        if (![numberString isEqualToString:[NSString stringWithFormat:@"%d", number]]){
            badInput = YES;
            break;
        }
        [numbers addObject: [NSNumber numberWithInt:number]];
    }
    
    NSArray *sorted = [numbers sortedArrayUsingSelector:@selector(compare:)];
    
    if (badInput) {
        self.outputField.text = @"Error: Bad Input :(";
        return;
    }
    else
        [self updateOutputField:sorted];
}

- (void) updateOutputField:(NSArray *)sorted {
    self.outputField.text = [sorted componentsJoinedByString:DELIMETER];
    [self.inputField resignFirstResponder];
    self.inputField.text = @"";
}

@end

