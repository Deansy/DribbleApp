//
//  Shot.h
//  DribbleAPI
//
//  Created by Cameron Deans on 19/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Shot: NSObject {
    NSURL *_image_teaser_url;
    NSNumber *_views_count;
    NSNumber *_comments_count;
    NSNumber *_likes_count;
    NSNumber *_id_;
    NSNumber *_width;
    NSNumber *_height;
    NSString *_title;
    Player *_player;
    NSURL *_rebound_source_url;
    NSURL *_url;
    //NSDate *_created_at;
    NSURL *_image_url;
    NSURL *_short_url;
    NSNumber *_rebounds_count;
}

-(id) initWith:(NSDictionary*)JSONObject;

@property (nonatomic) NSURL *image_teaser_url;
@property (nonatomic) NSNumber *views_count;
@property (nonatomic) NSNumber *comments_count;
@property (nonatomic) NSNumber *likes_count;
@property (nonatomic) NSNumber *id_;
@property (nonatomic) NSNumber *width;
@property (nonatomic) NSNumber *height;
@property (nonatomic) NSString *title;
@property (nonatomic) Player *player;
@property (nonatomic) NSURL *rebound_source_url;
@property (nonatomic) NSURL *url;
@property (nonatomic) NSURL *image_url;
@property (nonatomic) NSURL *short_url;
@property (nonatomic) NSNumber *rebounds_count;

@end
