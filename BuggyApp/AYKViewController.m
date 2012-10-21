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
    NSString* inputString = self.inputField.text;
    NSArray *numberStrings = [inputString componentsSeparatedByString:DELIMETER];
    NSMutableArray *numbers = [NSMutableArray array];
    
    for (NSString *numberString in numberStrings) {
        NSInteger number = [numberString intValue];
        [numbers addObject: [NSNumber numberWithInt:number]];
    }

    NSArray *sorted = [numbers sortedArrayUsingSelector:@selector(compare:)];
    [self updateOutputField:sorted];
}

- (void) updateOutputField:(NSArray *)sorted {
    self.outputField.text = [sorted componentsJoinedByString:DELIMETER];
    [self.inputField resignFirstResponder];
    self.inputField.text = @"";
}

@end

