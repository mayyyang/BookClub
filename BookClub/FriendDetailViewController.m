//
//  FriendDetailViewController.m
//  BookClub
//
//  Created by May Yang on 11/12/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "FriendDetailViewController.h"

@interface FriendDetailViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *friendLabel;

@end

@implementation FriendDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIAlertController *alertcontroller = [UIAlertController alertControllerWithTitle:@"Add an adventurer" message:nil preferredStyle:UIAlertControllerStyleAlert];
//
//    [alertcontroller addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = @"Adventurer Name";
//    }];
//
//    UIAlertAction *okAction = [UIAlertAction
//                               actionWithTitle:@"Okay"
//                               style:UIAlertActionStyleDefault
//                               handler:^(UIAlertAction *action)
//                               {
//                                   Adventurer *adventurer = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([Adventurer class]) inManagedObjectContext:self.moc];
//                                   UITextField *textField = alertcontroller.textFields.firstObject;
//                                   adventurer.name = textField.text;
//                                   [self.moc save:nil];
//                                   [self loadAdventurers];
//
//
//                               }];
//
//    [alertcontroller addAction:okAction];
//
//    [self presentViewController:alertcontroller animated:YES completion:^{
//        nil;
//    }];

}


- (IBAction)onButtonSuggestPressed:(UIBarButtonItem *)sender {
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"friendCell"];
    cell.textLabel.text = @"test";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
@end

