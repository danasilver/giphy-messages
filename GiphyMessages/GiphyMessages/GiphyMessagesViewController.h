//
//  GiphyMessagesViewController.h
//  GiphyMessages
//
//  Created by Dana Silver on 8/23/15.
//  Copyright (c) 2015 Dana Silver. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#define GiphyMessagesInstallActionMessages @"To finish installing, select Giphy.applescript as the AppleScript handler in Messages Preferences."
#define GiphyMessagesAuthorButtonTitle @"By @DanaRSilver"
#define GiphyMessagesAuthorButtonLink @"https://twitter.com/DanaRSilver"
#define GiphyMessagesHandlerName @"Giphy.applescript"
#define GiphyMessagesHandlerInstallLocationFormat @"%@/Library/Application Scripts/com.apple.iChat/%@"

@interface GiphyMessagesViewController : NSViewController

@end
