//
//  OLWidget.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface OLWidget : NSManagedObject

@property (nonatomic, retain) NSNumber * widgetType;
@property (nonatomic, retain) NSNumber * widgetVisible;
@property (nonatomic, retain) NSNumber * widgetIndex;
@property (nonatomic, retain) NSNumber * widgetCategoryIndex;

+ (OLWidget*)newWidgetObjectFromDictionary:(NSDictionary*)dict;
+ (OLWidget*)widgetWithIndex:(NSUInteger)wIndex;
- (void)setPropertiesFromDictionary:(NSDictionary*)dict;


@end
