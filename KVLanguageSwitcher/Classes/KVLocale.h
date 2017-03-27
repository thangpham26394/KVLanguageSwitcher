//
//  KVLocale.h
//  KVLanguageSwitcher
//
//  Created by citigo on 3/23/17.
//  Copyright © 2017 citigo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVLocale : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *languageCode;
@property (nonatomic, copy) NSString *countryCode;

- (id)initWithLanguageCode:(NSString *)languageCode countryCode:(NSString *)countryCode name:(NSString *)name;
@end
