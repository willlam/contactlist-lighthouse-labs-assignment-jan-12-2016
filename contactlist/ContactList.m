//
//  ContactList.m
//  contactlist
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init {
    self = [super init];
    if (self) {
       _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
