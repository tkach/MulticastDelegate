MulticastDelegate
=================

Multiple delegates messages forwarding implementation with zeroing weak references.

Based on NSHashTable. Table stores weak references, therefore even if some of your delegates was deallocated you will not get EXC_BAD_ACCESS. 



Installation
============
If you are using CocoaPods ([https://github.com/CocoaPods/CocoaPods](https://github.com/CocoaPods/CocoaPods)), just include this line to your Podfile.

	pod 'MulticastDelegate', :git => 'https://github.com/tkach/MulticastDelegate.git'


Alternatively, you can just copy this sources in your project:

- MulticastDelegate.h
- MulticastDelegate.m


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
