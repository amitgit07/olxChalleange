//
//  CategoryGenerator.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "CategoryGenerator.h"
#import "OLCategory.h"
#import "OLWidget.h"
#import "OLAdObject.h"
#import "Contants.h"




@implementation CategoryGenerator
- (void)generateCategories {
    NSArray* categories = @[@"Mobile & Tablets",
                            @"Computer",
                            @"Electronics",
                            @"Vehicle",
                            @"Furniture",
                            @"Animals",
                            @"Faishon & Beauty"];
    NSArray* images = @[@"MobilenTablets",
                        @"Computer",
                        @"Electronics",
                        @"Vehicle",
                        @"Furniture",
                        @"Animals",
                        @"FaishonnBeauty"];
    
    for (int i = 0; i < categories.count; i++) {
        NSDictionary* param = @{@"imagePath":images[i],
                                @"name": categories[i],
                                @"priceRangeMin": @(random()%1000+100),
                                @"priceRangeMax":@(random()%1000+20000),
                                @"index": @(i+3),
                                @"categoryId": @(i)};
        
        [OLCategory newSafeCategoryObjectFromDictionary:param];
        NSLog(@"Addding cat");
    }
    
    
    
    
//    widgetType;
//    widgetVisible;
//    widgetIndex;
//    widgetCategoryIndex;
    for (int i = 0; i < 5; i++) {
        NSDictionary* param = @{@"widgetType":@((i < 3)?i:2),
                                @"widgetVisible": @(1),
                                @"widgetIndex": @(i),
                                @"widgetCategoryIndex":@(i+3)};
        [OLWidget newWidgetObjectFromDictionary:param];
        NSLog(@"Addding widg");
    }
    
    [APPDelegate saveContext];
    
    
    
}
@end
