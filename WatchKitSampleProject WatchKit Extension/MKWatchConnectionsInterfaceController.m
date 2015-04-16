//
//  MKWatchConnectionsInterfaceController.m
//  Suhail Bhat
//
//  Created by Suhail Bhat on 14/04/15.
//  Copyright (c) 2015 com.suhailrashidbhat. All rights reserved.
//


#import "MKWatchConnectionsInterfaceController.h"

@interface ConnectionRow : NSObject

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *nameLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *numberLabel;

@end

@implementation ConnectionRow

-(instancetype)init {
    if (self != [super init]) {
        self = [[ConnectionRow alloc] init];
    }
    return self;
}

@end

@interface MKWatchConnectionsInterfaceController ()

@end

@implementation MKWatchConnectionsInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self.tableView setNumberOfRows:6 withRowType:@"connections"];
    [self reloadTable];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark TableView

-(void)reloadTable {
    for (int i = 0; i < 6; i++) {
        ConnectionRow *row = (ConnectionRow*)[self.tableView rowControllerAtIndex:i];
        switch (i) {
            case 0:
                [row.nameLabel setText:@"Paris"];
                [row.numberLabel setText:@"22 Jan 2015"];
                break;
            case 1:
                [row.nameLabel setText:@"London"];
                [row.numberLabel setText:@"11 March 2015"];
                break;
            case 2:
                [row.nameLabel setText:@"New York"];
                [row.numberLabel setText:@"03 September 2015"];
                break;
            case 3:
                [row.nameLabel setText:@"Kashmir"];
                [row.numberLabel setText:@"07 Jun 2015"];
                break;
            case 4:
                [row.nameLabel setText:@"Iqbal"];
                [row.numberLabel setText:@"9906564112"];
                break;
            default:
                [row.nameLabel setText:@"Iqbal"];
                [row.numberLabel setText:@"9906564112"];
                break;
        }
    }
}

@end



