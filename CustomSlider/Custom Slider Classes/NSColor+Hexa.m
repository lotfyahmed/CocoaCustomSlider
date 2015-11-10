//
//  NSColor+Hexa.m
//  MacOptimizer
//
//  Created by ahmed lotfy on 4/30/15.
//
//

#import "NSColor+Hexa.h"

@implementation NSColor (Hexa)


+ (NSColor *)colorFromHexadecimalValue:(NSString *)hexaString {
    
    if ([hexaString hasPrefix:@"#"]) {
        hexaString = [hexaString substringWithRange:NSMakeRange(1, [hexaString length] - 1)];
    }
    
    unsigned int colorCode = 0;
    
    if (hexaString) {
        NSScanner *scanner = [NSScanner scannerWithString:hexaString];
        (void)[scanner scanHexInt:&colorCode];
    }
    
    return [NSColor colorWithDeviceRed:((colorCode>>16)&0xFF)/255.0 green:((colorCode>>8)&0xFF)/255.0 blue:((colorCode)&0xFF)/255.0 alpha:1.0];
}
@end
