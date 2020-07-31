//
//  MessagingItem.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

/**
 signaling server message types

 - MessagingItemTypeReady: peer ready (can start send offer)
 - MessagingItemTypeOffer: peer offer
 - MessagingItemTypeAnswer: peer answer
 - MessagingItemCandidates: peer candidates
 - MessagingItemUnknow: unknow massage type
 */
typedef NS_ENUM(NSInteger, MessagingItemType) {
    MessagingItemTypeReady,
    MessagingItemTypeOffer,
    MessagingItemTypeAnswer,
    MessagingItemCandidates,
    MessagingItemUnknow
};

@interface WWMessagingItem : MTLModel <MTLJSONSerializing>

/**
 type
 */
@property (assign, nonatomic) MessagingItemType type;

/**
 message
 */
@property (copy, nonatomic) NSString *message;

/**
 decoded message
 */
@property (copy, nonatomic, readonly) NSString *decodedMessage;


- (instancetype)initWithType:(MessagingItemType)type message:(NSString *)msg;

/**
 encode message with base64String
 */
- (NSString *)encode;
@end
