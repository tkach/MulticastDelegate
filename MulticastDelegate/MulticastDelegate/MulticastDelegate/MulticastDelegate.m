//
//  MulticastDelegate.m
//  MulticastDelegate
//
//  Created by Alexander Tkachenko on 7/15/13.
//  Copyright (c) 2013 Alexander Tkachenko. All rights reserved.
//

#import "MulticastDelegate.h"
#import "NSMutableArray+NonRetaining.h"

@implementation MulticastDelegate {
    // the array of observing delegates
    NSMutableArray* _delegates;
}


- (id)init {
    if (self = [super init]) {
        _delegates = [NSMutableArray mutableArrayUsingWeakReferences];
    }
    return self;
}


- (void)addDelegate:(id)delegate {
    [_delegates addObject:delegate];
}


- (void)removeDelegate:(id)delegate {
    [_delegates removeObject:delegate];
}

- (void)removeAllDelegates {
    [_delegates removeAllObjects];
}


- (NSMutableArray *)delegates {
    return _delegates;
}


- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    
    // if any of the delegates respond to this selector, return YES
    for(id delegate in [_delegates copy]) {
        if ([delegate respondsToSelector:aSelector]) {
            return YES;
        }
    }
    return NO;
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    // can this class create the signature?
    NSMethodSignature* signature = [super methodSignatureForSelector:aSelector];
    
    // if not, try our delegates
    if (!signature) {
        for(id delegate in [_delegates copy]) {
            if ([delegate respondsToSelector:aSelector]) {
                return [delegate methodSignatureForSelector:aSelector];
            }
        }
    }
    return signature;
}


- (void)forwardInvocation:(NSInvocation *)anInvocation {
    // forward the invocation to every delegate
    for(id delegate in [_delegates copy]) {
        if ([delegate respondsToSelector:[anInvocation selector]]) {
            [anInvocation invokeWithTarget:delegate];
        }
    }
}

@end
