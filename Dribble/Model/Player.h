//
//  Player.h
//  DribbleAPI
//
//  Created by Cameron Deans on 19/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject {
    NSNumber *_followers_count;
    NSURL *_website_url;
    NSNumber *_comments_count;
    NSString *_name;
    NSNumber *_likes_count;
    NSNumber *_id_;
    NSString *_username;
    NSString *_location;
    NSNumber *_shots_count;
    NSNumber *_likes_recieved_count;
    NSNumber *_drafted_by_player_id;
    NSURL *_url;
    NSNumber *_draftees_count;
    NSDate *_created_at;
    NSURL *_avatar_url;
    NSNumber *_following_count;
    NSString *_twitter_screen_name;
    NSNumber *_rebounds_recieved_count;
    NSNumber *_rebounds_count;
}

+(id) initWith:(NSDictionary*)JSONObject;


@property (nonatomic) NSNumber *followers_count;
@property (nonatomic) NSURL *website_url;
@property (nonatomic) NSNumber *comments_count;
@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *likes_count;
@property (nonatomic) NSNumber *id_;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *location;
@property (nonatomic) NSNumber *shots_count;
@property (nonatomic) NSNumber *likes_recieved_count;
@property (nonatomic) NSNumber *drafted_by_player_id;
@property (nonatomic) NSURL *url;
@property (nonatomic) NSNumber *draftees_count;
@property (nonatomic) NSDate *created_at;
@property (nonatomic) NSURL *avatar_url;
@property (nonatomic) NSNumber *following_count;
@property (nonatomic) NSString *twitter_screen_name;
@property (nonatomic) NSNumber *rebounds_recieved_count;
@property (nonatomic) NSNumber *rebounds_count;


@end