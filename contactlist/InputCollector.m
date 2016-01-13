//
//  InputCollector.m
//  contactlist
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
  NSLog(@"%@", promptString);
  
  char input[255];
  fgets(input, 255, stdin);
  
NSString *inputString = [NSString stringWithUTF8String:input];
  inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
  return inputString;
}

@end
