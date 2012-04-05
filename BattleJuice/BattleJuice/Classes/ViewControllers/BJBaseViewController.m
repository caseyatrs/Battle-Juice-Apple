//
//  BJBaseViewController.m
//  BattleJuice
//
//  Created by Lance Parker on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJBaseViewController.h"

@interface BJBaseViewController ()

@end

@implementation BJBaseViewController
@synthesize navBar = _navBar;

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
    
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BJ_logo.png"]];
    
    //NSArray *items = [NSArray arrayWithObject:logoImageView];
	//[self.navBar setItems:items];
    self.navBar.topItem.titleView = logoImageView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)share {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Share Pressed!" message:@"I'm sorry Dave, I'm afraid I can't do that." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
