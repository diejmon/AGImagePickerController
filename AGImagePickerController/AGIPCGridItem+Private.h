

#import "AGIPCGridItem.h"

@interface AGIPCGridItem (Private)
+ (void)resetNumberOfSelections;
+ (NSUInteger)numberOfSelections;
- (void)increaseNumberOfSelectedGridItems;
- (void)decreaseNumberOfSelectedGridItems;
@end
