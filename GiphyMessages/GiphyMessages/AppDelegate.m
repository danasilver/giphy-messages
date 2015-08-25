//
//  AppDelegate.m
//  GiphyMessages
//
//  Created by Dana Silver on 8/23/15.
//  Copyright (c) 2015 Dana Silver. All rights reserved.
//

#import "AppDelegate.h"
#import "GiphyMessagesViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong) IBOutlet GiphyMessagesViewController *giphyMessagesViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.giphyMessagesViewController = [[GiphyMessagesViewController alloc] initWithNibName:@"GiphyMessagesViewController"
                                                                                     bundle:nil];
    
    [self.window setTitle:@"Giphy Messages"];
    self.window.styleMask = NSClosableWindowMask | NSTitledWindowMask | NSMiniaturizableWindowMask;
    [self.window.contentView addSubview:self.giphyMessagesViewController.view];
    self.giphyMessagesViewController.view.frame = ((NSView *)self.window.contentView).bounds;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
