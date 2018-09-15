//
//  DVTDlfcn.cpp
//
//  Created by zuopengliu on 5/9/2018.
//

#include "DVTDlfcn.h"
#include "DVTMachOParser.h"
#include <mach/mach.h>
#include <malloc/malloc.h>
#include <dlfcn.h>
#include <mach-o/dyld.h>
#include <mach/mach.h>



#pragma mark - lookup symbol address from symbol table

vm_address_t dvt_lookup_sym(void *handler, const char *symbolName)
{
    if (!symbolName) return 0;
    
    char underscoredName[strlen(symbolName)+2];
    underscoredName[0] = '_';
    strcpy(&underscoredName[1], symbolName);
    
    const uint32_t numOfImages = _dyld_image_count();
    // magic "search all in load order" handle
    for (uint32_t i = 0; i < numOfImages; ++i) {
        const mach_header *header = (mach_header *)_dyld_get_image_header(i);
        DVT::DVTMachOParser parser((const mach_header *)header);
        void *addr = NULL;
        if ( parser.hasExportedSymbol(underscoredName, NULL, &addr) ) {
            return (vm_address_t)addr;
        }
    }
    
    return 0;
}
