//
//  OLCategory.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class OLAdObject;

@interface OLCategory : NSManagedObject

@property (nonatomic, retain) NSString * imagePath;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * priceRangeMin;
@property (nonatomic, retain) NSNumber * priceRangeMax;
@property (nonatomic, retain) NSNumber * index;
@property (nonatomic, retain) NSNumber * categoryId;
@property (nonatomic, retain) NSSet *ads;

+ (OLCategory*)newSafeCategoryObjectFromDictionary:(NSDictionary*)dict;
+ (OLCategory*)categoryWithIndex:(NSUInteger)wIndex;
- (void)setPropertiesFromDictionary:(NSDictionary*)dict;


@end

@interface OLCategory (CoreDataGeneratedAccessors)

- (void)addAdsObject:(OLAdObject *)value;
- (void)removeAdsObject:(OLAdObject *)value;
- (void)addAds:(NSSet *)values;
- (void)removeAds:(NSSet *)values;

@end
