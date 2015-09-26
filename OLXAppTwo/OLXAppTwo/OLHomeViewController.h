//
//  OLHomeViewController.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OLHomeViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)addWidgetButtonTap:(UIButton *)sender;

@end
