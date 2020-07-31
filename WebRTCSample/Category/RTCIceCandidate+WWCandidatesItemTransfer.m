//
//  RTCIceCandidate+sss.m
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import "RTCIceCandidate+WWCandidatesItemTransfer.h"
#import "WWCandidatesItem.h"

@implementation RTCIceCandidate(WWCandidatesItemTransfer)

+ (RTCIceCandidate *)transferWWCandidatesItem2RTCIceCandidate:(WWCandidatesItem *)item {
  return [[RTCIceCandidate alloc] initWithSdp:item.sdp sdpMLineIndex:(int)item.sdpMLineIndex.integerValue sdpMid:item.sdpMid];
}

- (WWCandidatesItem *)toWWCandidatesItem {
    WWCandidatesItem *item = [[WWCandidatesItem alloc] init];
    item.sdpMid = self.sdpMid;
    item.sdpMLineIndex = @(self.sdpMLineIndex);
    item.sdp = self.sdp;
    return item;
}

@end
