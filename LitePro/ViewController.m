//
//  ViewController.m
//  LitePro
//
//  Created by rpoolos1951 on 8/15/12.
//  Copyright (c) 2012 Super Duper Publications. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // This will load the proper plist automatically.
    NSLog(@"Plist Value: %@",[[NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"]] objectForKey:@"property"]);
    
    // Also remember we set up a preprocessor PRO. you can use it as well.
    if (PRO) {
        NSLog(@"Only Show for Pro");
    } else {
        NSLog(@"Only Show for Lite");
    }
    
    NSLog(@"This will show for both");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
