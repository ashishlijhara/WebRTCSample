//
//  WWSignalingClientConfigure.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 Signaling Configurtion
 */
@protocol WWSignalingClientConfigure <NSObject>

/**
 e.g @"http://127.0.0.1:8080"
 */
- (NSString *)signalingServerInfo;

@end
