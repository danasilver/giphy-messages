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
@property (weak) IBOutlet NSButton *authorButton;

@end

@implementation GiphyMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set images
    [self.preferencesImageView setImage:[NSImage imageNamed:@"Preferences"]];
    [self.headerImageView setImage:[NSImage imageNamed:@"Header"]];
    
    // Set install message
    [self.installActionMessage setStringValue:GiphyMessagesInstallActionMessages];
    
    // Set footer
    [self.authorButton setTitle:GiphyMessagesAuthorButtonTitle];
    [self.authorButton setBordered:NO];
    
    [self copyGiphyMessagesAppleScriptHandler];
}

- (IBAction)openMessages:(id)sender {
    if (![[NSWorkspace sharedWorkspace] launchApplication:@"/Applications/Messages.app"])
        [self.installActionMessage setStringValue:@"Uh oh! It looks like Messages isn't installed."];
}

- (IBAction)authorButtonWasPressed:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:GiphyMessagesAuthorButtonLink]];
}

- (BOOL)copyGiphyMessagesAppleScriptHandler {
    NSString *handlerPath = [[NSBundle mainBundle] pathForResource:@"Giphy" ofType:@"applescript"];
    
    if ([[NSFileManager defaultManager] isReadableFileAtPath:handlerPath]) {
        NSString *handlerInstallPath = [NSString stringWithFormat:GiphyMessagesHandlerInstallLocationFormat, NSHomeDirectory(), GiphyMessagesHandlerName, nil];
        
        NSError *error = nil;
        [[NSFileManager defaultManager] copyItemAtPath:handlerPath toPath:handlerInstallPath error:&error];
        
        if (error) {
            return NO;
        }
        
        return YES;
    }

    return NO;
}

@end
