//
//  GiphyMessagesViewController.m
//  GiphyMessages
//
//  Created by Dana Silver on 8/23/15.
//  Copyright (c) 2015 Dana Silver. All rights reserved.
//

#import "GiphyMessagesViewController.h"

@interface GiphyMessagesViewController ()

@property (weak) IBOutlet NSTextField *installActionMessage;
@property (weak) IBOutlet NSImageView *preferencesImageView;
@property (weak) IBOutlet NSImageView *headerImageView;

@end

@implementation GiphyMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.preferencesImageView setImage:[NSImage imageNamed:@"Preferences"]];
    [self.headerImageView setImage:[NSImage imageNamed:@"Header"]];
    
    [self.installActionMessage setStringValue:GiphyMessagesInstallActionMessages];
}

- (IBAction)openMessages:(id)sender {
    if (![[NSWorkspace sharedWorkspace] launchApplication:@"/Applications/Messages.app"])
        [self.installActionMessage setStringValue:@"Uh oh! It looks like Messages isn't installed."];
}

@end
