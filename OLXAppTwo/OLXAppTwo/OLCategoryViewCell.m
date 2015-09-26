//
//  OLCategoryViewCell.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "OLCategoryViewCell.h"
#import "Contants.h"

@implementation OLCategoryViewCell
- (void)layoutSubviews {
    [super layoutSubviews];
    self.thumbView.layer.cornerRadius = self.thumbView.frame.size.width/2.0f;
    [self.thumbView.layer setMasksToBounds:YES];
    
    CGRect frame = self.titleLabel.frame;
    frame.origin.x = 110;
    frame.origin.y = 20;
    frame.size.height =21;
    self.titleLabel.frame = frame;
    DLogFrame(frame);

}
@end
