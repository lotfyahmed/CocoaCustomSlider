# CocoaCustomSlider
Cocoa custom slider: NSSlider with changing color.

# Setup
To Change you NSSlider progress color with any hexa color:

1. Drag "Custom Slider Classes" folder in your project.
2. In your xib file add NSSlider to the window.
3. Open the NSSliderCell under the NSSlider and type "MyCustomSlider".
4. Open "MyCustomSlider.h" class and set your Progress and backaground hexa color in the macro.
```
#define PROGRESS_COLOR @"#8DEBAE"
#define BACKGROUND_COLOR @"#000000"
```