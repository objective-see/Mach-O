//
//  main.m
//  MachOParser
//
//  Created by Patrick Wardle on 2/10/15.
//  Copyright (c) 2015 Patrick Wardle. All rights reserved.
//

#import "MachO.h"


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        //machO parser
        MachO* parser = nil;
        
        //alloc/init
        parser = [[MachO alloc] init];
        
        //parse a file
        [parser parse:[NSString stringWithUTF8String:argv[1]]];
        
        //dbg
        NSLog(@"parsing complete");
        NSLog(@"LC_RPATHs: %@", parser.binaryInfo[KEY_LC_RPATHS]);
        NSLog(@"LC_LOAD_DYLIBS: %@", parser.binaryInfo[KEY_LC_LOAD_DYLIBS]);
        NSLog(@"LC_LOAD_WEAK_DYLIBS: %@", parser.binaryInfo[KEY_LC_LOAD_WEAK_DYLIBS]);
        
    }
    
    
    return 0;
}
