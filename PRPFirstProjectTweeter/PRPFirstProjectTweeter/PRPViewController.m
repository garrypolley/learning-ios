//
//  PRPViewController.m
//  PRPFirstProjectTweeter
//
//  Created by Garry Polley on 7/9/12.
//  Copyright (c) 2012 Cerner Cooperation. All rights reserved.
//

#import "PRPViewController.h"
#import <Twitter/Twitter.h>

@interface PRPViewController ()

@end

@implementation PRPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction) handleTweetButtonTapped: (id) sender {
    if ([TWTweetComposeViewController canSendTweet]) {
        TWTweetComposeViewController *tweetVC =
        [[TWTweetComposeViewController alloc] init];
        [tweetVC setInitialText:
         @"I just finished the first project in iOS SDK Development. #pragsios"];
        [self presentViewController:tweetVC animated:YES completion:NULL]; }else{
            NSLog (@"Can't send tweet"); }
}

@end
