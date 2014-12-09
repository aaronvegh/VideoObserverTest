//
//  VideoObserver.m
//  VideoObserverTest
//
//  Created by Aaron Vegh on 2014-12-09.
//  Copyright (c) 2014 Aaron Vegh. All rights reserved.
//

#import "VideoObserver.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@implementation VideoObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"status"]) {
        NSLog(@"Change: %@", change);
    }
}


@end
