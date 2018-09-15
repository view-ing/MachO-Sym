//
//  DVTDlfcn.h
//
//  Created by zuopengliu on 5/9/2018.
//

#ifndef DVTDlfcn_h
#define DVTDlfcn_h

#include <stdio.h>
#include <mach/vm_types.h>



#ifdef __cplusplus
#   define DVT_EXTERN_BEGIN     extern "C" {
#   define DVT_EXTERN_END       }
#else
#   define DVT_EXTERN_BEGIN
#   define DVT_EXTERN_END
#endif



DVT_EXTERN_BEGIN


/**
 全局搜索，未找到返回0
 
 @param handler     文件句柄
 @param symbolName  符号名
 @return 符号地址
 */
vm_address_t dvt_lookup_sym(void *handler, const char *symbolName);


DVT_EXTERN_END


#endif /* DVTDlfcn_h */
