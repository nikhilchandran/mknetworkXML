//
//  MyEngine.h
//  mknetworkXML
//
//  Created by Nikhil Chandran on 17/11/14.
//  Copyright (c) 2014 Nikhil Chandran. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MKNetworkEngine.h"

@interface MyEngine : MKNetworkEngine

typedef void (^ResponseBlock)(MKNetworkOperation* operation);
typedef void (^ErrorBlock)(NSError* error);
typedef void (^MYResponseBlock)(NSString *rate);

-(MKNetworkOperation*) postMyXMl:(NSString * )Myxml nCompletion:(MYResponseBlock) completion
                         onError:(ErrorBlock) error;


@end
