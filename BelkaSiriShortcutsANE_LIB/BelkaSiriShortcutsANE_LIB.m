//
//  BelkaSiriShortcutsANE_LIB.m
//  BelkaSiriShortcutsANE_LIB
//
//  Created by Dzmitry Anushkevich on 8/15/18.
//  Copyright © 2018 Dzmitry Anushkevich. All rights reserved.
//
#import "FreMacros.h"
#import "BelkaSiriShortcutsANE_LIB.h"
#import <BelkaSiriShortcutsANE_FW/BelkaSiriShortcutsANE_FW.h>

#define FRE_OBJC_BRIDGE BELKA_FlashRuntimeExtensionsBridge // use unique prefix throughout to prevent clashes with other ANEs
@interface FRE_OBJC_BRIDGE : NSObject<FreSwiftBridgeProtocol>
@end
@implementation FRE_OBJC_BRIDGE {
}
FRE_OBJC_BRIDGE_FUNCS
@end

@implementation BelkaSiriShortcutsANE_LIB
SWIFT_DECL(BELKA) // use unique prefix throughout to prevent clashes with other ANEs
CONTEXT_INIT(BELKA) {
    SWIFT_INITS(BELKA)
    
    /**************************************************************************/
    /******* MAKE SURE TO ADD FUNCTIONS HERE THE SAME AS SWIFT CONTROLLER *****/
    /**************************************************************************/
    
    static FRENamedFunction extensionFunctions[] =
    {
         MAP_FUNCTION(BELKA, init)
        ,MAP_FUNCTION(BELKA, sayHello)
    };
    
    
    
    /**************************************************************************/
    /**************************************************************************/
    
    SET_FUNCTIONS
    
}

CONTEXT_FIN(BELKA) {
    [BELKA_swft dispose];
    BELKA_swft = nil;
    BELKA_freBridge = nil;
    BELKA_swftBridge = nil;
    BELKA_funcArray = nil;
}
EXTENSION_INIT(BELKA)
EXTENSION_FIN(BELKA)
@end
