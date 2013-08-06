//
//  ViewController.m
//  Maps-Prototype
//
//  Created by Geeky Works on 20/07/13.
//  Copyright (c) 2013 Geeky Works. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* url = [NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&sensor=false&key=AddYourOwnKeyHere"];
    BOOL opened = [[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
    
    NSLog(@"OPEN = %@", opened? @"YES":@"NO");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
