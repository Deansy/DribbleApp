//
// Created by camerondeans on 11/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "Shot.h"
#import <AFNetworking/AFNetworking.h>
//#import "DribbleAPIClient.h"


@interface TimelineCell : UICollectionViewCell  {
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *posterLabel;
    
}

- (void)hideOverlay;
- (void)showOverlay;
- (void)setCellData:(Shot*)shotData;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *posterLabel;

@end