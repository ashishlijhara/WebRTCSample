//
//  WWCandidatesItem.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

NS_ASSUME_NONNULL_BEGIN

@interface WWCandidatesItem : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSString *sdpMid;

@property (copy, nonatomic) NSNumber *sdpMLineIndex;

@property (copy, nonatomic) NSString *sdp;

@end

NS_ASSUME_NONNULL_END
