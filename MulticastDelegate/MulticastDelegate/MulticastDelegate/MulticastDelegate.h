//
//  MulticastDelegate.h
//  MulticastDelegate
//
//  Created by Alexander Tkachenko on 7/15/13.
//  Copyright (c) 2013 Alexander Tkachenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MulticastDelegate : NSObject

// Adds the given delegate implementation to the list of observers
- (void)addDelegate:(id)delegate;

// Removes the given delegate implementation from the list of observers
- (void)removeDelegate:(id)delegate;

- (void)removeAllDelegates;

- (NSMutableArray *)delegates;

@end
