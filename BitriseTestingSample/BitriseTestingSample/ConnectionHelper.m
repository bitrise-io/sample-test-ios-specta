//
//  ConnectionHelper.m
//  BitriseTestingSample
//
//  Created by Tamás Bazsonyi on 7/2/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

#import "ConnectionHelper.h"

@implementation ConnectionHelper

+ (Boolean) testConnection{
   
    NSURL *URL = [NSURL URLWithString:@"https://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSHTTPURLResponse *res = nil;
    NSError *err = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&res error:&err];

    if((long)[res statusCode])
        if(((long)[res statusCode]) == 200)
            return true;
        else
            return false;
    else
        return false;
    
}

@end
