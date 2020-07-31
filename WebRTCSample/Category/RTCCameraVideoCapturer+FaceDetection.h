//
//  RTCCameraVideoCapturer+SplitData.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebRTC/RTCCameraVideoCapturer.h>
#import <Vision/Vision.h>

NS_ASSUME_NONNULL_BEGIN

/**
 FaceDetection
 */
@interface RTCCameraVideoCapturer (FaceDetection)

/**
 start observer
 */
- (void)startObserverWithHandler:(VNRequestCompletionHandler)handler;

/**
 stop observer
 */
- (void)stopObserver;

@end

NS_ASSUME_NONNULL_END
