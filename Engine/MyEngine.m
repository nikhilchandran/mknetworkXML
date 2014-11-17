//
//  MyEngine.m
//  mknetworkXML
//
//  Created by Nikhil Chandran on 17/11/14.
//  Copyright (c) 2014 Nikhil Chandran. All rights reserved.
//

#import "MyEngine.h"
#import "XMLDictionary.h"
#import "MKNetworkOperation.h"
@implementation MyEngine

-(MKNetworkOperation*) postMyXMl:(NSString * )Myxml nCompletion:(MYResponseBlock) completion
                         onError:(ErrorBlock) errorblock{

    
    NSMutableDictionary * tempDic = [[NSMutableDictionary alloc]init];
  
    NSString *mystring=@"<cs><o n=\"authenticationcode\" v=\"0ac2c000fdef106588dc65129e94baa3\"></o> <c n=\"GetDeliveryPoints\"></c> </cs>";
    [tempDic setValue:mystring forKey:@"XML"];
    [tempDic setValue:@"0.5034367187937492" forKey:@"r"];
    [tempDic setValue:@"application/x-www-form-urlencoded/xml" forKey:@"Content-Type"];
    
    
    MKNetworkOperation *op =[self operationWithURLString: @"http://beta.emiratesgas.ae/remoteconnect/default.asp"params:tempDic httpMethod:@"POST"];
  
   
    [op  addCompletionHandler:^(MKNetworkOperation *completedOperation) {
        DLog("completed ==> %@", [completedOperation description]);
        NSDictionary * mydictionary =[NSDictionary dictionaryWithXMLString:completedOperation.responseString];
        
        
        DLog("XML Data ==> %@", [mydictionary description]);

        completion([completedOperation responseString]);

    } errorHandler:^(MKNetworkOperation *completedOperation, NSError *error) {
         errorblock(error);
    }];
  
     [self enqueueOperation:op];
      return op;
    
    }

@end
