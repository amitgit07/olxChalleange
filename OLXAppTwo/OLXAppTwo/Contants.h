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

#endif
