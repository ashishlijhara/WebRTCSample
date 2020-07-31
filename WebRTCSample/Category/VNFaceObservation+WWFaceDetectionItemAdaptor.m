//
//  VNFaceObservation+Transfer.m
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import "VNFaceObservation+WWFaceDetectionItemAdaptor.h"
#import "WWFaceDetectionItem.h"

@implementation VNFaceObservation (WWFaceDetectionItemAdaptor)

- (WWFaceDetectionItem *)toWWFaceDetectionItem {
    WWFaceDetectionItem *item = [WWFaceDetectionItem new];
    item.x = @(self.boundingBox.origin.x);
    item.y = @(self.boundingBox.origin.y);
    item.width = @(self.boundingBox.size.width);
    item.height = @(self.boundingBox.size.height);
    return item;
}

@end
