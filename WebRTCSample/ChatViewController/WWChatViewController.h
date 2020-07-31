//
//  ChatViewController.h
//  WebRTCSample
//
//  Created by Lijhara Ashish on 2020/7/25.
//  Copyright © 2020 Hyper Reality Studio Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WWWebRTCClient;

NS_ASSUME_NONNULL_BEGIN

@interface WWChatViewController : UIViewController

@property (strong, nonatomic) WWWebRTCClient *rtcClient;

@end

NS_ASSUME_NONNULL_END
