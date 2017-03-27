//
//  KVLanguageManager.h
//  KVLanguageSwitcher
//
//  Created by citigo on 3/23/17.
//  Copyright © 2017 citigo. All rights reserved.
//

#define DEFAULTS_KEY_LANGUAGE_CODE @"LanguageCode"
#define KVLocalisedString(key, comment) \
[[KVLanguageManager sharedInstance] getTranslationForKey:key]

#import <Foundation/Foundation.h>
#import "KVLocale.h"
@interface KVLanguageManager : NSObject
@property (nonatomic, copy) NSArray *availableLocales;

+ (KVLanguageManager *)sharedInstance;
- (void)setLanguageWithLocale:(KVLocale *)locale;
- (NSString *)getTranslationForKey:(NSString *)key;
@end
