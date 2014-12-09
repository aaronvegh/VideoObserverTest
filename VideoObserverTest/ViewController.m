//
//  ViewController.m
//  VideoObserverTest
//
//  Created by Aaron Vegh on 2014-12-09.
//  Copyright (c) 2014 Aaron Vegh. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import "VideoObserver.h"

@interface ViewController ()

@property AVPlayer * videoPlayer;
@property VideoObserver * observer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.observer = [VideoObserver new];
    
    NSURL * videoURL = [NSURL URLWithString:@"http://www.quirksmode.org/html5/videos/big_buck_bunny.mp4"];
    self.videoPlayer = [AVPlayer playerWithURL:videoURL];
    
    [self.videoPlayer addObserver:self.observer forKeyPath:@"status" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial context:nil];
    
    self.player = self.videoPlayer;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
