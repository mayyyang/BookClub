//
//  ViewController.m
//  BookClub
//
//  Created by May Yang on 11/12/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "RootViewController.h"
#import "Friend.h"
#import "ReaderViewController.h"


@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Creating initial friends
    Friend *friendOne = [[Friend alloc]initWithName:@"Billy Bob"];
    Friend *friendTwo = [[Friend alloc]initWithName:@"Billy Jean"];
    Friend *friendThree = [[Friend alloc]initWithName:@"Britney"];

    self.friendsArray = [@[friendOne,
                           friendTwo,
                           friendThree] mutableCopy];

}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.friendsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Friend *friend = self.friendsArray[indexPath.row];
    cell.textLabel.text = friend.name;
    return cell;
}

- (IBAction)unwindFromReaderViewController:(UIStoryboardSegue *)segue
{
    ReaderViewController *readerVC = segue.sourceViewController;
    NSString *result = readerVC.hoosenrader;
    
}

@end
