//
//  WWCandidatesItem.m
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import "WWCandidatesItem.h"

@implementation WWCandidatesItem

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"sdpMid": @"m",
             @"sdpMLineIndex": @"i",
             @"sdp" : @"s"
             };
}


@end
