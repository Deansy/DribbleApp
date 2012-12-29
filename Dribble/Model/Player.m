//
//  Player.m
//  DribbleAPI
//
//  Created by Cameron Deans on 19/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize followers_count = _followers_count;
@synthesize website_url = _website_url;
@synthesize comments_count = _comments_count;
@synthesize name = _name;
@synthesize likes_count = _likes_count;
@synthesize id_ = _id_;
@synthesize username = _username;
@synthesize location = _location;
@synthesize shots_count = _shots_count;
@synthesize likes_recieved_count = _likes_recieved_count;
@synthesize drafted_by_player_id = _drafted_by_player_id;
@synthesize url = _url;
@synthesize draftees_count = _draftees_count;
@synthesize created_at = _created_at;
@synthesize avatar_url = _avatar_url;
@synthesize following_count = _following_count;
@synthesize twitter_screen_name = _twitter_screen_name;
@synthesize rebounds_recieved_count = _rebounds_recieved_count;
@synthesize rebounds_count = _rebounds_count;


+(Player *) initWith:(NSDictionary*)JSONObject {
    Player *new = [[Player alloc] init];

    new.followers_count = [JSONObject objectForKey:@"followers_count"];
    new.url = [NSURL URLWithString:[JSONObject objectForKey:@"url"]];
    new.comments_count = [JSONObject objectForKey:@"comments_count"];
    new.name = [JSONObject objectForKey:@"name"];
    new.likes_count = [JSONObject objectForKey:@"likes_count"];
    new.id_ = [JSONObject objectForKey:@"id"];
    new.username = [JSONObject objectForKey:@"username"];
    new.location = [JSONObject objectForKey:@"location"];
    new.shots_count = [JSONObject objectForKey:@"shots_count"];
    new.likes_recieved_count = [JSONObject objectForKey:@"likes_recieved_count"];
    new.drafted_by_player_id =[JSONObject objectForKey:@"drafted_by_player_id"];
    new.url = [NSURL URLWithString:[JSONObject objectForKey:@"url"]];
    new.draftees_count = [JSONObject objectForKey:@"draftees_count"];
    // _created_at
    new.avatar_url = [NSURL URLWithString:[JSONObject objectForKey:@"avatar_url"]];
    new.following_count = [JSONObject objectForKey:@"following_count"];
    new.followers_count = [JSONObject objectForKey:@"followers_count"];
    new.rebounds_recieved_count = [JSONObject objectForKey:@"rebounds_recieved_count"];
    new.rebounds_count = [JSONObject objectForKey:@"rebounds_coubt"];

    return new;
}

@end
