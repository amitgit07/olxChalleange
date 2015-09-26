//
//  OLWidget.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "OLWidget.h"
#import "Contants.h"

@implementation OLWidget

@dynamic widgetType;
@dynamic widgetVisible;
@dynamic widgetIndex;
@dynamic widgetCategoryIndex;


+ (OLWidget*)newWidgetObjectFromDictionary:(NSDictionary*)dict {
    if (!dict) return nil;
    OLWidget* newObj = [NSEntityDescription insertNewObjectForEntityForName:@"OLWidget" inManagedObjectContext:MOC];
    [newObj setPropertiesFromDictionary:dict];
    return newObj;
}
+ (OLWidget*)widgetWithIndex:(NSUInteger)wIndex {
    NSFetchRequest* request = [[NSFetchRequest alloc] initWithEntityName:@"OLWidget"];
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"self.widgetIndex=%@",@(wIndex)];
    [request setPredicate:predicate];
    
    NSError *error = nil;
    NSArray *result = [MOC executeFetchRequest:request error:&error];
    if (error) {
        NSLog(@"%s Unable to execute fetch request.",__FUNCTION__);
        NSLog(@"%@, %@", error, error.localizedDescription);
        return nil;
    } else {
        if (result.count) {
            return [result lastObject];
        }
        return nil;
    }
    return nil;
}
- (void)setPropertiesFromDictionary:(NSDictionary*)dict {
    if (!dict) return;
    
    self.widgetType = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"widgetType", @(0)) integerValue]];
    self.widgetIndex = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"widgetIndex", @(0)) integerValue]];
    self.widgetCategoryIndex = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"widgetCategoryIndex", @(0)) integerValue]];
    self.widgetVisible = [NSNumber numberWithBool:[NullObjectReplace(dict, @"widgetVisible", @(0)) boolValue]];
}

+ (NSArray*)allObjects {
    NSFetchRequest* request = [[NSFetchRequest alloc] initWithEntityName:@"OLWidget"];
    NSError *error = nil;
    NSArray *result = [MOC executeFetchRequest:request error:&error];
    if (error) {
        NSLog(@"%s Unable to execute fetch request.",__FUNCTION__);
        NSLog(@"%@, %@", error, error.localizedDescription);
        return nil;
    } else {
        return result;
    }
    return nil;
}
@end
