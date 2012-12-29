//
//  CellViewController.m
//  Dribble
//
//  Created by Cameron Deans on 26/11/2012.
//  Copyright (c) 2012 Cameron Deans. All rights reserved.
//

#import "TimelineViewController.h"
#import "DribbleAPIClient.h"


#define isiPhone UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone

@implementation TimelineViewController

//TODO: RENAME
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

    if (isiPhone) {
        self = [super initWithNibName:@"TimelineViewController_iPhone" bundle:nibBundleOrNil];
    }
    else{
        self = [super initWithNibName:@"TimelineViewController_iPad" bundle:nibBundleOrNil];

    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *firstSection = [[NSMutableArray alloc] init];

    self.dataArray = [[NSMutableArray alloc] initWithObjects:firstSection, nil];

    
    [self.collectionView registerClass:[TimelineCell class] forCellWithReuseIdentifier:@"TimelineCell"];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    

    if (isiPhone) {
        [flowLayout setItemSize:CGSizeMake(160, 120)];
    }
    else {
        [flowLayout setItemSize:CGSizeMake(256, 192)];
    }
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    [flowLayout setMinimumLineSpacing:0];
    [flowLayout setMinimumInteritemSpacing:0];


    //TODO: Change this to only load pages as required.
    for (int i = 1; i < 5; i++) {
        [[DribbleAPIClient sharedClient] getShots:self forPage:i];
    }

    [self.collectionView setCollectionViewLayout:flowLayout];
}

-(TimelineCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    Shot *shot = [data objectAtIndex:indexPath.row];
    
    static NSString *cellIdentifier = @"TimelineCell";
    
    TimelineCell *cell = (TimelineCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];


    //TODO: iPad currently loads the higher res images, Make this an option of base it on network type/speed.
    
    [cell setCellData:shot];
    
    return cell;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return [sectionArray count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    //TODO: If the cell goes off screen then unselect it.
    //TODO: On the overlay add a button to move to a new view controller


    if (selectedCell == nil) {
        //Nothing was selected before
        selectedCell = (TimelineCell *)[collectionView cellForItemAtIndexPath:indexPath];

        [selectedCell showOverlay];
    }
    else {
        //Another cell was selected before, Do anything required here to clear this.
        [selectedCell hideOverlay];

        //Don't know why I had this, Don't want to delete it yet incase it is needed.
        //NSIndexPath *editedIndexPath = [NSIndexPath indexPathForItem:0 inSection:indexPath.section];

        //hide the new one
        selectedCell = (TimelineCell *)[collectionView cellForItemAtIndexPath:indexPath];
        [selectedCell showOverlay];
    }

}


@end
