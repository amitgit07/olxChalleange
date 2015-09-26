//
//  OLAdObject.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "OLAdObject.h"
#import "OLCategory.h"
#import "OLLocation.h"
#import "Contants.h"


@implementation OLAdObject

@dynamic details;
@dynamic imagePath;
@dynamic imageUrl;
@dynamic objId;
@dynamic inCategory;
@dynamic location;


+ (OLAdObject*)newAdObjectFromDictionary:(NSDictionary*)dict {
    if (!dict) return nil;
    OLAdObject* newObj = [NSEntityDescription insertNewObjectForEntityForName:@"OLAdObject" inManagedObjectContext:MOC];
    [newObj setPropertiesFromDictionary:dict];
    return newObj;
}
+ (OLAdObject*)adWithID:(NSUInteger)adId {
    NSFetchRequest* request = [[NSFetchRequest alloc] initWithEntityName:@"OLAdObject"];
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"self.objId=%@",@(adId)];
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
    
    self.details = NullObjectReplace(dict, @"details", @(0));
    self.imagePath = NullObjectReplace(dict, @"imagePath", @(0));
    self.imageUrl = NullObjectReplace(dict, @"imageUrl", @(0));
    self.objId = [NSNumber numberWithInteger:[NullObjectReplace(dict, @"objId", @(0)) integerValue]];
}


@end
