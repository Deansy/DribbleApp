//
// Created by camerondeans on 11/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TimelineCell.h"
#import "Player.h"


@implementation TimelineCell {}

@synthesize imageView;
@synthesize titleLabel;
@synthesize posterLabel;


#define isiPhone UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone

- (id)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    
    if (self) {
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"TimelineCell" owner:self options:nil];
    
        if ([arrayOfViews count] < 1)
        {
            return nil;
        }
    
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]])
        {
            return nil;
        }
    
        self = [arrayOfViews objectAtIndex:0];


        titleLabel.hidden = YES;
        posterLabel.hidden = YES;
       
    }
    return self;
}
- (void)setCellData:(Shot*)shotData {
    if (isiPhone) {
        // TODO: Load the cell specifically for the iPhone
        // TODO: Load the most appropriate image if the device is retina or not, or setting dictates otherwise
        
        // Set the imageView
        if (imageView != nil && [shotData image_teaser_url] != nil) {
            //[imageView setImageWithURL:[shotData image_teaser_url]];
            [imageView setImageWithURL:[shotData image_url]];
        }
        else {
            NSLog(@"ImageView error");
        }

    }
    else {
        // TODO: Load the cell specifically for the iPad
        if (imageView != nil && [shotData image_url] != nil) {
            [imageView setImageWithURL:[shotData image_url]];
        }
        else {
            NSLog(@"ImageView error");
        }
        
    }



    if (titleLabel != nil && [shotData title] != nil) {
        [titleLabel setText:[shotData title]];
    }
    else {
        NSLog(@"PosterLabel error");
    }


    if (posterLabel != nil && [[shotData player] name] != nil) {
        [posterLabel setText:[[shotData player] name]];
    }
    else {
        NSLog(@"PosterLabel error");
    }
}

-(void) showOverlay {
    //TEMP
    imageView.alpha = 0.1;
    titleLabel.hidden = NO;
    posterLabel.hidden = NO;
    
}

- (void) hideOverlay {
    //TEMP
    imageView.alpha = 1;
    titleLabel.hidden = YES;
    posterLabel.hidden = YES;
    
}

@end