//
//  WWFaceDetectionResultsItem.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"
@class WWFaceDetectionItem;

NS_ASSUME_NONNULL_BEGIN

@interface WWFaceDetectionResultsItem : MTLModel <MTLJSONSerializing>
/**
 results
 */
@property (copy, nonatomic) NSArray<WWFaceDetectionItem *> *results;
@end

NS_ASSUME_NONNULL_END
