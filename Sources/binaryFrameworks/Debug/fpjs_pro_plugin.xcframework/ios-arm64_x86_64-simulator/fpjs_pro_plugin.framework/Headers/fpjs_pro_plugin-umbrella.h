#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FpjsProPlugin.h"

FOUNDATION_EXPORT double fpjs_pro_pluginVersionNumber;
FOUNDATION_EXPORT const unsigned char fpjs_pro_pluginVersionString[];

