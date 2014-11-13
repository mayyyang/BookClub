//
//  ReaderViewController.m
//  BookClub
//
//  Created by May Yang on 11/12/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "ReaderViewController.h"
#define kURL @"http://s3.amazonaws.com/mobile-makers-assets/app/public/ckeditor_assets/attachments/18/friends.json"

@interface ReaderViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *readersArray;


@end

@implementation ReaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:kURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (connectionError) {
            NSLog(@"Yo you have an error: %@", connectionError.localizedDescription);
        }
        else
        {
            self.readersArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            [self.tableView reloadData];
        }
    }];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self.tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.readersArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondCell" forIndexPath:indexPath];

    // Put object at row into reader string, then check if matches in friend string (BOOL method below)
    NSString *reader = [self.readersArray objectAtIndex:indexPath.row];


    BOOL checkMe = [self readerIsFriend:reader];
    
    if (checkMe)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {

        cell.accessoryType = UITableViewCellAccessoryNone;

    }

    cell.textLabel.text = self.readersArray[indexPath.row];
    return cell;
}


-(BOOL)readerIsFriend:(NSString *)reader
{
    for(NSString *friend in self.chosenFriendArray)
    {
        // check to see if match
        if([reader isEqualToString:friend]){

            return YES;
        }

    }

    return NO;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{


}

- (NSString *)chosenReader
{
    NSInteger row = self.tableView.indexPathForSelectedRow.row;
    return self.readersArray[row];
}



@end
