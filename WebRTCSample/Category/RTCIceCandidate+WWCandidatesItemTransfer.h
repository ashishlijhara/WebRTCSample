//
//  RTCIceCandidate+sss.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebRTC/RTCIceCandidate.h>
@class WWCandidatesItem;

@interface RTCIceCandidate (WWCandidatesItemTransfer)

/**
 transfer WWCandidatesItem to RTCIceCandidate
 */
+ (RTCIceCandidate *)transferWWCandidatesItem2RTCIceCandidate:(WWCandidatesItem *)item;

/**
 transfer RTCIceCandidate to WWCandidatesItem
 */
- (WWCandidatesItem *)toWWCandidatesItem;

@end
