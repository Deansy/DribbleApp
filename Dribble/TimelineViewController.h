//
//  CellViewController.h
//  Dribble
//
//  Created by Cameron Deans on 26/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shot.h"
#import "TimelineCell.h"

@interface TimelineViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>  {
    TimelineCell* selectedCell;
}

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
