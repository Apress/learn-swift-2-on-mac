//
//  TheObject.m
//  Chapter21
//
//  Created by Waqar Malik on 11/1/15.
//  Copyright © 2015 Waqar Malik. All rights reserved.
//

#import "TheObject.h"

@implementation TheObject
- (TheObject * _Nullable)itemWithName:(NSString * _Nonnull)name
{
    return [[TheObject alloc] init];
    
    NSMutableArray<NSString *>*stringsArray = [[NSMutableArray alloc] init];
    [stringsArray addObject:@"My String1"];
    [stringsArray addObject:@"My String2"];
    
    NSString *result = [stringsArray objectAtIndex:0];
    
    NSMutableDictionary<NSNumber *, NSString *> *dictionary = [[NSMutableDictionary alloc] init];
    
}
@end
