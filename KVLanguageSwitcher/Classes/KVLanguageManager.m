//
//  KVLanguageManager.m
//  KVLanguageSwitcher
//
//  Created by citigo on 3/23/17.
//  Copyright © 2017 citigo. All rights reserved.
//

#import "KVLanguageManager.h"

@implementation KVLanguageManager

+ (KVLanguageManager *)sharedInstance {
    // Create a singleton.
    static dispatch_once_t onceToken;
    static KVLanguageManager *sharedInstance;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [[KVLanguageManager alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    // Manually create a list of available localisations.
    KVLocale *english = [[KVLocale alloc] initWithLanguageCode:@"en" countryCode:@"us" name:@"English"];
    KVLocale *vietnamese = [[KVLocale alloc] initWithLanguageCode:@"vi" countryCode:@"vn" name:@"Tiếng Việt"];
    self.availableLocales = @[english,vietnamese];
    return self;
}

/**
 * Save selected language code to NSUserDefaults
 */
- (void)setLanguageWithLocale:(KVLocale *)locale {
    
    [[NSUserDefaults standardUserDefaults] setObject:locale.languageCode forKey:DEFAULTS_KEY_LANGUAGE_CODE];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/**
 * Get the corresponding translate for given key
 */
- (NSString *)getTranslationForKey:(NSString *)key {
    
    // Get the language code.
    NSString *languageCode = [[[NSUserDefaults standardUserDefaults] stringForKey:DEFAULTS_KEY_LANGUAGE_CODE] lowercaseString];
    
    // Get the relevant language bundle.
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:languageCode ofType:@"lproj"];
    NSBundle *languageBundle = [NSBundle bundleWithPath:bundlePath];
    
    // Get the translated string using the language bundle.
    NSString *translatedString = [languageBundle localizedStringForKey:key value:@"" table:nil];
    
    if (translatedString.length < 1) {
        
        // There is no localizable strings file for the selected language.
        translatedString = NSLocalizedStringWithDefaultValue(key, nil, [NSBundle mainBundle], key, key);
    }
    
    return translatedString;
}

@end
