//
//  Contants.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#ifndef OLXAppTwo_Contants_h
#define OLXAppTwo_Contants_h


#import "AppDelegate.h"


#define APPDelegate (AppDelegate*)[[UIApplication sharedApplication] delegate]
#define MOC [APPDelegate managedObjectContext]
#define NullObjectReplace(dictionary, key, replaceBy) (![dictionary objectForKey:key]||[[dictionary objectForKey:key] isKindOfClass:[NSNull class]])?replaceBy:[dictionary objectForKey:key]


#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define DLogObj(Obj) DLog(@"%@",Obj)
#define DLogFrame(frame) DLog(@"%@",NSStringFromCGRect(frame))
#define DLogPoint(point) DLog(@"%@",NSStringFromCGPoint(point))



typedef enum {
    OLWidgetTypeTool,
    OLWidgetTypeAds,
    OLWidgetTypeCategory,
}OLWidgetType;


#endif
