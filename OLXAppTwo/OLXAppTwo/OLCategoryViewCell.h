//
//  OLCategoryViewCell.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OLCategoryViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumbView;
@property (weak, nonatomic) IBOutlet UIImageView *catSelected;
- (void)setIsVisible:(BOOL)visible;
@end
