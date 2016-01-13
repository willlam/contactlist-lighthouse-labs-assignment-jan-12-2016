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
      
      NSString *userSelection = [InputCollector inputForPrompt:menuString];
//
//      if ([userSelection isEqual:@"quit"]) {
//        return 0;
//      }
//      if ([userSelection isEqual:@"new"]) {
//        NSString *contactName = [userInput inputForPrompt:@"Enter a new contact name: "];
//        NSString *contactEmail = [userInput inputForPrompt:@"Enter contact email: "];
//        Contact *contact = [[Contact alloc] init];
//        
//        contact.name = contactName;
//        contact.email = contactEmail;
//        
//        [contactList addContact:contact];
//      }
//      if ([userSelection isEqualTo:@"list"]) {
//        [contactList printContactList];
//      }
    }
    
    return 0;
  }