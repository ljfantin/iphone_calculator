//
//  ViewController.h
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
#import "Cell.h"
@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

    @property (nonatomic,retain) IBOutlet UICollectionView *collectionView;

@end
