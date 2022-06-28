//
//  JackpotNativeMediator.m
//  FreestarAds-Jackpot
//
//  Created by Dean Chang on 6/28/22.
//

#import "JackpotNativeMediator.h"

@interface JackpotNativeMediator()

@property FreestarNativeAdSize requestedSize;

@end

@implementation JackpotNativeMediator

- (BOOL)canShowNativeAd {
    FSTRLog(@"JACKPOT: Can show native ad.");
    return YES;
}

- (void)loadNativeAd {
    // load native ad
    FSTRLog(@"JACKPOT: Loading native ad...");
    NSError *error = [[NSError alloc] initWithDomain:@"com.jackpot.native.error"
                                                code:1
                                            userInfo:@{ NSLocalizedDescriptionKey : @"Native ad failed to load."}];
    const NSTimeInterval delayInSeconds = 1;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        if (error) {
            [self didFailToReceiveNativeAdWithError:error];
        } else {
            [self didReceiveNativeAd];
        }
        
    });
}

- (void)applyNativeTemplate:(FreestarNativeAdSize)adSize {
    // apply native template
    FSTRLog(@"JACKPOT: Apply size to native ad.");
    self.requestedSize = adSize;
}

- (UIView *)adViewFromTemplateNib {
    // load native template
    FSTRLog(@"JACKPOT: Return native template adview.");
    return nil;
}

- (void)showAd {
    // show ad
    FSTRLog(@"JACKPOT: Return native template adview.");
}

#pragma mark - Jackpot native loader delegate

- (void)didReceiveNativeAd {
    // fill
    FSTRLog(@"JACKPOT: Native ad loaded.");
}

- (void)didFailToReceiveNativeAdWithError:(NSError*)error {
    // no fill
    FSTRLog(@"JACKPOT: %@", [error localizedDescription]);
}

@end
