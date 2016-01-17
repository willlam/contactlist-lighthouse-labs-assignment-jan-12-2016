//
//  main.m
//  contactlist
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

  int main(int argc, const char * argv[]) {
    
    ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {

      NSString *menuString = @"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application";
      
      InputCollector *inputCollector = [[InputCollector alloc] init];
      
      NSString *userSelection = [inputCollector inputForPrompt:menuString];

      if ([userSelection isEqual:@"quit"]) {
        return 0;
      }
      else if ([userSelection isEqual:@"new"]) {
        
        Contact *user = [[Contact alloc] init];
        
        NSString *fullname = [inputCollector inputForPrompt:@"Enter fullname:"];
        user.fullname = fullname;
        
        NSString *email = [inputCollector inputForPrompt:@"Enter your email:"];
        user.email = email;
        
        [contactList.contacts addObject:user];
        NSLog(@"%@", contactList.contacts);
      }
      else if ([userSelection isEqual:@"list"]) {
       // print list of contacts following this format #:<full name>()
        [contactList printContactList];
      }
      
    }
    
    return 0;
  }