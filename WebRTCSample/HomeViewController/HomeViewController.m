//
//  ViewController.m
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import "HomeViewController.h"
#import "WWWebRTCClient.h"
#import "WWChatViewController.h"
#import "WWSignalingClient.h"
#import "WWDefaultSignalingClientConfigure.h"
#import <WebRTC/RTCConfiguration.h>
#import <WebRTC/RTCIceServer.h>

@interface HomeViewController ()

@property (strong, nonatomic) WWWebRTCClient *client;

@property (strong, nonatomic) IBOutlet UIButton *callButton;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.callButton setEnabled:NO];
    [self createClient];
    [self.client start];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    __weak typeof(self) weakSelf = self;
    [[NSNotificationCenter defaultCenter] addObserverForName:kWWWebRTCClientNotificationReady object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        [weakSelf.callButton setBackgroundColor:[UIColor greenColor]];
        [weakSelf.callButton setEnabled:YES];
        [weakSelf.callButton setTitle:@"CALL" forState:UIControlStateNormal];
    }];
    
    //be called
    [[NSNotificationCenter defaultCenter] addObserverForName:kWWWebRTCClientNotificationBeCall object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"chat"];
        if ([vc isKindOfClass:[WWChatViewController class]]) {
            ((WWChatViewController *)vc).rtcClient = weakSelf.client;
            //send Offer to call peer
            [weakSelf presentViewController:vc animated:YES completion:nil];
        }
    }];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:kWWWebRTCClientNotificationPeerLeave object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        [weakSelf.callButton setBackgroundColor:[UIColor lightGrayColor]];
        [weakSelf.callButton setTitle:@"ROOM EMPTY" forState:UIControlStateNormal];
        [weakSelf.callButton setEnabled:NO];
    }];
    
    
}

- (void)createClient {
    //create WWWebRTCClient
    WWSignalingClient *signalingClient = [[WWSignalingClient alloc] initWithConfigure:[WWDefaultSignalingClientConfigure new]];
    
    RTCConfiguration *config = [[RTCConfiguration alloc] init];
    //init server here, you can add trun server or stun server in this config
    config.iceServers = @[[[RTCIceServer alloc] initWithURLStrings:@[@"stun:stun.l.google.com:19302",
                                                                     @"stun:stun1.l.google.com:19302"]]];
    config.sdpSemantics = RTCSdpSemanticsUnifiedPlan;
    config.continualGatheringPolicy = RTCContinualGatheringPolicyGatherContinually;
    
    //create WWWebRTCClient
    WWWebRTCClient *rtcClient = [[WWWebRTCClient alloc] initWithSignalingClient:signalingClient configuration:config];
    self.client = rtcClient;
}

- (IBAction)didClickedCall:(id)sender {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"chat"];
    if ([vc isKindOfClass:[WWChatViewController class]]) {
        ((WWChatViewController *)vc).rtcClient = self.client;
        //send Offer to call peer
        [self.client sentOffer];
        [self presentViewController:vc animated:YES completion:nil];
    }
}

@end
