//
//  WWFaceDetectionItem.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

NS_ASSUME_NONNULL_BEGIN

@interface WWFaceDetectionItem : MTLModel <MTLJSONSerializing>

/**
 x
 */
@property (copy, nonatomic) NSNumber *x;

/**
 w
 */
@property (copy, nonatomic) NSNumber *y;

/**
 width
 */
@property (copy, nonatomic) NSNumber *width;

/**
 height
 */
@property (copy, nonatomic) NSNumber *height;
@end

NS_ASSUME_NONNULL_END
