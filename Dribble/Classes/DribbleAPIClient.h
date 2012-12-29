#import "TimelineViewController.h"
#import "DribbleAPIClient.h"
#import "AFNetworking.h"
#import "Shot.h"


@interface DribbleAPIClient : AFHTTPClient

+ (DribbleAPIClient *)sharedClient;
- (void) getShots:(TimelineViewController *)viewController forPage: (NSInteger)page;

@end
