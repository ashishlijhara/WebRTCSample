//
//  WWFaceDetectionResultsItem.m
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import "WWFaceDetectionResultsItem.h"
#import "WWFaceDetectionItem.h"

@implementation WWFaceDetectionResultsItem

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"results": @"r"
             };
}

+ (NSValueTransformer *)resultsJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[WWFaceDetectionItem class]];
}
@end
