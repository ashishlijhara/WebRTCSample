//
//  VNFaceObservation+Transfer.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Vision/Vision.h>
@class WWFaceDetectionItem;

NS_ASSUME_NONNULL_BEGIN

/**
 adaptor
 */
@interface VNFaceObservation (WWFaceDetectionItemAdaptor)

/**
 transfer to WWFaceDetectionItem

 @return item
 */
- (WWFaceDetectionItem *)toWWFaceDetectionItem;

@end

NS_ASSUME_NONNULL_END
