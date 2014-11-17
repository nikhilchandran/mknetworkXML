//
//  ViewController.m
//  mknetworkXML
//
//  Created by Nikhil Chandran on 17/11/14.
//  Copyright (c) 2014 Nikhil Chandran. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MKNetworkEngine.h"
#import "MyEngine.h"
#import "ViewController.h"
#import <MKNetworkOperation.h>
@interface ViewController ()

@property(nonatomic,retain) MyEngine * myeng;
@end

@implementation ViewController

@synthesize myeng;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    myeng= [[MyEngine alloc] initWithHostName:@""];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillAppear:(BOOL)animated
{
    
    
    [myeng postMyXMl:@"" nCompletion:^(NSString *data) {
    
    
    } onError:^(NSError *error) {
        
    }];
  

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
