//
//  Friend.h
//  BookClub
//
//  Created by May Yang on 11/12/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friend : NSObject
@property NSString *name;

- (instancetype)initWithName: (NSString *)name;

@end