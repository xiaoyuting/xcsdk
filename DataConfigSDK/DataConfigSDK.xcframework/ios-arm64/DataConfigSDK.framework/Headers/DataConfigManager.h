//
//  DataConfigManager.h
//  DataConfigSDK
//
//  Created by hy001 on 2025/12/26.
//

#import <Foundation/Foundation.h>
 
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface DataConfigManager : NSObject
+(instancetype)sharedInstance;
- (void)finishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)RegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
 

- (void)didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo;
 
- (void)didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler;
 
- (void)didReceiveLocalNotification:(UILocalNotification *)notification;
 
- (void)applicationWillResignActive;
- (void)applicationDidEnterBackground;

- (void)applicationWillEnterForeground;

- (void)applicationDidBecomeActive;
- (void)applicationWillTerminate;

- (BOOL)applicationhandleOpenURL:(NSURL *)url;
- (BOOL)applicationopenURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

-(UIViewController*)DataConfigViewcontroller;
-(UIView*)dataConfigView;
@end

NS_ASSUME_NONNULL_END
