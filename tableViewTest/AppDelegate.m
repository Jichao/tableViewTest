//
//  AppDelegate.m
//  tableViewTest
//
//  Created by jcyangzh on 2016/12/3.
//  Copyright © 2016年 jcyangzh. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()<NSTableViewDataSource>
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 3;
}

- (nullable id)tableView:(NSTableView *)tableView objectValueForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
{
    NSString *identifier = [tableColumn identifier];
    if ([identifier isEqualToString:@"NameCell"])
    {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:identifier owner:self];
        cellView.textField.stringValue = @"how are you";
        return cellView;
    }
    return nil;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
