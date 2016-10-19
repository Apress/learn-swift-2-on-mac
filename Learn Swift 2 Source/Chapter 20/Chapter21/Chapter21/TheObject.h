//
//  TheObject.h
//  Chapter21
//
//  Created by Waqar Malik on 11/1/15.
//  Copyright © 2015 Waqar Malik. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TheObject<T> : NSObject
@property(strong, nonnull, nonatomic) T name;
@property(strong, nonatomic) T _Nullable anotherName;

- (TheObject * _Nullable)itemWithName:(T _Nonnull)name;
- (nullable TheObject *)anotherItemWithName:(nonnull T)name;
@end
