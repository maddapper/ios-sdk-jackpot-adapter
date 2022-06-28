//
//  JackpotFSTRPartnerInitializer.m
//  FreestarAds-Jackpot
//
//  Created by Dean Chang on 6/28/22.
//

#import "JackpotFSTRPartnerInitializer.h"

@implementation JackpotFSTRPartnerInitializer

+ (instancetype)shared {
    static JackpotFSTRPartnerInitializer *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[JackpotFSTRPartnerInitializer alloc] init];
    });
    return instance;
}

- (void)runInitialization {
    // run partner initialization here
//    NSError *error = [[NSError alloc] initWithDomain:@"com.jackpot.native.error"
//                                                code:1
//                                            userInfo:@{ NSLocalizedDescriptionKey : @"Jackpot partner failed to initialize."}];
    NSError *error = nil;
    if (error) {
        [self.delegate sdkInitialization:self completed:NO];
    } else {
        [self.delegate sdkInitialization:self completed:YES];
    }
}

@end
