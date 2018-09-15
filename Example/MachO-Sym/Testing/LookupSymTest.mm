//
//  LookupSymTest.m
//
//  Created by zuopengliu on 11/9/2018.
//

#import "LookupSymTest.h"
#import <dlfcn.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#if __has_include("DVTDlfcn.h")
#import "DVTDlfcn.h"
#elif __has_include(<MachO-Sym/DVTDlfcn.h>)
#import <MachO-Sym/DVTDlfcn.h>
#endif



void assert_test(void *handler, const char *sym)
{
    if (!sym) return;
    
    __unused void *spt1 = (void *)dlsym(RTLD_DEFAULT, sym);
    __unused void *pt1  = (void *)dvt_lookup_sym(RTLD_DEFAULT, sym);
    
    assert(spt1 == pt1);
}


void test(void)
{
    assert_test(RTLD_DEFAULT, "fabs");
    assert_test(RTLD_DEFAULT, "abs");
    assert_test(RTLD_DEFAULT, "va_start");
    assert_test(RTLD_DEFAULT, "va_end");
    assert_test(RTLD_DEFAULT, "printf");
    assert_test(RTLD_DEFAULT, "get");
    assert_test(RTLD_DEFAULT, "open");
    assert_test(RTLD_DEFAULT, "_NSConcreteStackBlock");
    assert_test(RTLD_DEFAULT, "_NSConcreteMallocBlock");
    assert_test(RTLD_DEFAULT, "_NSConcreteGlobalBlock");
    
    assert_test(RTLD_DEFAULT, "NSStringFromCGRect");
    assert_test(RTLD_DEFAULT, "NSStringFromCGPoint");
    assert_test(RTLD_DEFAULT, "NSStringFromCGSize");
    assert_test(RTLD_DEFAULT, "NSStringFromRange");
    
    assert_test(RTLD_DEFAULT, "CGRectMake");
    
    assert_test(RTLD_DEFAULT, "NSMakeRange");
    assert_test(RTLD_DEFAULT, "NSMaxRange");
    assert_test(RTLD_DEFAULT, "NSEqualRanges");
    assert_test(RTLD_DEFAULT, "NSEqualRanges");
}

#pragma mark -

@implementation LookupSymTest

+ (void)test
{
    test();
}

@end
