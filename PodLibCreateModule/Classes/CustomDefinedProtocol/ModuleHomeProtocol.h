//
//  ModuleHomeProtocol.h
//  PodLibCreateModule
//
//  Created by lihaifeng on 2020/7/5.
//

#import <Foundation/Foundation.h>
#import "JJLoginProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@protocol ModuleHomeProtocol <JJBaseProtocol>

-(UIViewController *)viewControllerWithInfo:(id)userInfo needNew:(BOOL)needNew callback:(JJModuleCallbackBlock)callback;

@end

NS_ASSUME_NONNULL_END
