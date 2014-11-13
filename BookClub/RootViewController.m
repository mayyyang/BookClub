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
@property NSMutableArray *chosenReaderArray;
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chosenReaderArray = [NSMutableArray array];

}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.chosenReaderArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"friendCell" forIndexPath:indexPath];
    cell.textLabel.text = self.chosenReaderArray[indexPath.row];
    
    return cell;
}

- (IBAction)unwindFromReaderViewController:(UIStoryboardSegue *)segue
{
    ReaderViewController *vc = segue.sourceViewController;
    NSString *result = [vc chosenReader];
    [self.chosenReaderArray addObject:result];
    [self.tableView reloadData];

}

@end
