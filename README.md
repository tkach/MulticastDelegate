MulticastDelegate
=================

Multiple delegates messages forwarding implementation.
Based on SHCMulticastDelegate but with easier adding/removing delegates methods and non-retaining delegates array.

The logic of this component is well described in the post of Colin Ebernadt, in his article [http://www.scottlogic.com/blog/2012/11/19/a-multicast-delegate-pattern-for-ios-controls.html](http://www.scottlogic.com/blog/2012/11/19/a-multicast-delegate-pattern-for-ios-controls.html)


Installation
============
If you are using CocoaPods ([https://github.com/CocoaPods/CocoaPods](https://github.com/CocoaPods/CocoaPods)), just include this line to your Podfile.

	pod 'MulticastDelegate', :git => 'https://github.com/tkach/MulticastDelegate.git'


Alternatively, you can just copy this sources in your project:

- MulticastDelegate.h
- MulticastDelegate.m
- NSMutableArray+NonRetaining.h
- NSMutableArray+NonRetaining.m


Usage
=====

Example:

	//Create multicast delegate object and assign it as delegate to the object, that needs sending messages to multiple delegates
	
	MulticastDelegate* multicast = [MulticastDelegate new];
	self.webView.delegate = multicast;

	//Add several delegates

	[multicast addDelegate:_firstDelegateObject];
	[multicast addDelegate:_secondDelegateObject];
	[multicast addDelegate:_thirdDelegateObject];
