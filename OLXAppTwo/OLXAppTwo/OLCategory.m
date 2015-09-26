//
//  OLCategory.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "OLCategory.h"
#import "OLAdObject.h"
#import "Contants.h"


@implementation OLCategory

@dynamic imagePath;
@dynamic name;
@dynamic priceRangeMin;
@dynamic priceRangeMax;
//@dynamic newAdCounts;
@dynamic index;
@dynamic categoryId;
@dynamic ads;



+ (OLCategory*)newSafeCategoryObjectFromDictionary:(NSDictionary*)dict {
    if (!dict) return nil;
    OLCategory* oldObj = [OLCategory categoryWithIndex:[NullObjectReplace(dict, @"index", @(0)) integerValue]];
    if (oldObj) {
        [oldObj setPropertiesFromDictionary:dict];
        return oldObj;
    }
    else {
        OLCategory* newObj = [NSEntityDescription insertNewObjectForEntityForName:@"OLCategory" inManagedObjectContext:MOC];
        [newObj setPropertiesFromDictionary:dict];
        return newObj;
    }
}
+ (OLCategory*)categoryWithIndex:(NSUInteger)wIndex {
    NSFetchRequest* request = [[NSFetchRequest alloc] initWithEntityName:@"OLCategory"];
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"self.index=%@",@(wIndex)];
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
    
    self.imagePath = NullObjectReplace(dict, @"imagePath", @"");
    self.name = NullObjectReplace(dict, @"name", @"NA");
    self.priceRangeMin = [NSNumber numberWithFloat:[NullObjectReplace(dict, @"priceRangeMin", @(0)) floatValue]];
    self.priceRangeMax = [NSNumber numberWithFloat:[NullObjectReplace(dict, @"priceRangeMax", @(0)) floatValue]];
//    self.newAdCounts = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"newAdCounts", @(0)) integerValue]];
    self.index = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"index", @(0)) integerValue]];
    self.categoryId = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"categoryId", @(0)) integerValue]];
}


@end
