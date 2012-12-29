#import "DribbleAPIClient.h"
#import "AFNetworking.h"
#import "Shot.h"


static NSString * const kDribbleAPIBaseURLString = @"http://api.dribbble.com";

@implementation DribbleAPIClient

+ (DribbleAPIClient *)sharedClient {
    static DribbleAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:kDribbleAPIBaseURLString]];
    });
    
    return _sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    
    return self;
}

- (void) getShots:(TimelineViewController *)viewController forPage: (NSInteger)page {
    NSString *pageString = [NSString stringWithFormat:@"%d", page];
    
    NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:@"30",@"per_page",pageString, @"page",nil];
    
    [[DribbleAPIClient sharedClient] getPath:@"shots" parameters:params success:^(AFHTTPRequestOperation *operation, id JSON) {
        NSMutableArray *array = [[NSMutableArray alloc] init];

        for (int i = 0; i < [[JSON objectForKey:@"shots"] count]; i++) {
            Shot *tempShot = [[Shot alloc] initWith:[[JSON objectForKey:@"shots"] objectAtIndex:i]];
            [array addObject:tempShot];
            [[[viewController dataArray] objectAtIndex:0] addObject:tempShot];
        }

        [[viewController collectionView] reloadData];

    } failure:nil];
}
@end
