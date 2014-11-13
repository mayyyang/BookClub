//
//  BookDetailViewController.m
//  BookClub
//
//  Created by May Yang on 11/12/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "BookDetailViewController.h"

@interface BookDetailViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BookDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)onButtonCommentPressed:(UIBarButtonItem *)sender
{
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
