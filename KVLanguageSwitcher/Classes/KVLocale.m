//
//  KVLocale.m
//  KVLanguageSwitcher
//
//  Created by citigo on 3/23/17.
//  Copyright © 2017 citigo. All rights reserved.
//

#import "KVLocale.h"

@implementation KVLocale
- (id)initWithLanguageCode:(NSString *)languageCode countryCode:(NSString *)countryCode name:(NSString *)name {
    
    if (self = [super init]) {
        
        self.languageCode = languageCode;
        self.countryCode = countryCode;
        self.name = name;
    }
    
    return self;
}

//Đây là đoạn comment để test xem có update được thư viện khi up lại code lên git và chạy pod install ở project dùng hay không hihihihihi!
@end
