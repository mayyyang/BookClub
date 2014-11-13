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

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (IBAction)unwindFromReaderViewController:(UIStoryboardSegue *)segue
{
//    ReaderViewController *readerVC = segue.sourceViewController;
//    NSString *result = readerVC.hoosenrader;

}

@end
