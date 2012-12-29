//
//  Shot.m
//  DribbleAPI
//
//  Created by Cameron Deans on 19/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//


#import "Shot.h"

@implementation Shot

@synthesize image_teaser_url = _image_teaser_url;
@synthesize views_count = _views_count;
@synthesize comments_count = _comments_count;
@synthesize likes_count = _likes_count;
@synthesize id_ = _id_;
@synthesize width = _width;
@synthesize height = _height;
@synthesize title = _title;
@synthesize player = _player;
@synthesize rebounds_count = _rebounds_count;
@synthesize url = _url;
@synthesize image_url = _image_url;
@synthesize short_url = _short_url;
@synthesize rebound_source_url = _rebound_source_url;

-(id) initWith:(NSDictionary*)JSONObject {
    if (self = [super init])
    {
        _image_teaser_url = [NSURL URLWithString:[JSONObject objectForKey:@"image_teaser_url"]];
        _views_count = [JSONObject objectForKey:@"views_count"];
        _comments_count = [JSONObject objectForKey:@"comments_count"];
        _likes_count = [JSONObject objectForKey:@"likes_count"];
        _id_ = [JSONObject objectForKey:@"id"];
        _width = [JSONObject objectForKey:@"width"];
        _height = [JSONObject objectForKey:@"height"];
        _title = [JSONObject objectForKey:@"title"];
        _player = [Player initWith:[JSONObject objectForKey:@"player"]];
        _rebound_source_url = [NSURL URLWithString:[JSONObject objectForKey:@"rebound_source_url"]];
        _url = [NSURL URLWithString:[JSONObject objectForKey:@"url"]];
        //created_at =
        _image_url = [NSURL URLWithString:[JSONObject objectForKey:@"image_url"]];
        _short_url = [NSURL URLWithString:[JSONObject objectForKey:@"short_url"]];
        _rebound_source_url = [JSONObject objectForKey:@"rebounds_count"];

    }
    return  self;
}
@end

