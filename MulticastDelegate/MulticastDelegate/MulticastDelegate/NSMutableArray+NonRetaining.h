//
//  NSMutableArray+NonRetaining.h
//  MulticastDelegate
//
//  Created by Alexander Tkachenko on 7/15/13.
//  Copyright (c) 2013 Alexander Tkachenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (NonRetaining)

+ (id)mutableArrayUsingWeakReferences;
+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity;


@end
