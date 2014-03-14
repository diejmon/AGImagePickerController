

#import "AGIPCGridItem+Private.h"

static NSUInteger numberOfSelectedGridItems = 0;

@implementation AGIPCGridItem (Private)

+ (void)resetNumberOfSelections
{
  numberOfSelectedGridItems = 0;
}

+ (NSUInteger)numberOfSelections
{
  return numberOfSelectedGridItems;
}

- (void)increaseNumberOfSelectedGridItems
{
  numberOfSelectedGridItems++;
}

- (void)decreaseNumberOfSelectedGridItems
{
  numberOfSelectedGridItems--;
}

@end
