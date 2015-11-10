//
//  MyCustomSlider.m
//  CustomSlider
//
//  Created by Ahmed Lotfy on 11/10/15.
//  Copyright © 2015 Ahmed Lotfy. All rights reserved.
//

#import "MyCustomSlider.h"
#import "NSColor+Hexa.h"

@implementation MyCustomSlider

- (void)drawBarInside:(NSRect)rect flipped:(BOOL)flipped {
    rect.size.height = 5.0;
    // Bar radius
    CGFloat barRadius = 2.5;
    // Knob position depending on control min/max value and current control value.
    CGFloat value = ([self doubleValue]  - [self minValue]) / ([self maxValue] - [self minValue]);
    // Final Left Part Width
    CGFloat finalWidth = value * ([[self controlView] frame].size.width - 8);
    
    // Left Part Rect
    NSRect leftRect = rect;
    leftRect.size.width = finalWidth;
    // Draw Left Part
    NSBezierPath* bg = [NSBezierPath bezierPathWithRoundedRect: rect xRadius: barRadius yRadius: barRadius];
//    [[NSColor colorFromHexadecimalValue:BACKGROUND_COLOR] setFill];
    [bg fill];
    
    // Draw Right Part
    NSBezierPath* active = [NSBezierPath bezierPathWithRoundedRect: leftRect xRadius: barRadius yRadius: barRadius];
    [[NSColor colorFromHexadecimalValue:PROGRESS_COLOR] setFill];
    [active fill];
    
    
}

@end
