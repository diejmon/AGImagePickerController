

#import "AGImagePickerController+Private.h"
#import "AGIPCGridItem+Private.h"

@implementation AGImagePickerController (Private)
- (void)didFinishPickingAssets:(NSArray *)selectedAssets
{
  [self popToRootViewControllerAnimated:NO];
  
  // Reset the number of selections
  [AGIPCGridItem performSelector:@selector(resetNumberOfSelections)];
  
  if (self.didFinishBlock)
    self.didFinishBlock(selectedAssets);
  
	if (_pickerFlags.delegateDidFinishPickingMediaWithInfo)
  {
		[self.delegate performSelector:@selector(agImagePickerController:didFinishPickingMediaWithInfo:) withObject:self withObject:selectedAssets];
	}
}

- (void)didCancelPickingAssets
{
  [self popToRootViewControllerAnimated:NO];
  
  // Reset the number of selections
  [AGIPCGridItem performSelector:@selector(resetNumberOfSelections)];
  
  if (self.didFailBlock)
    self.didFailBlock(nil);
  
  if (_pickerFlags.delegateDidFail)
  {
		[self.delegate performSelector:@selector(agImagePickerController:didFail:) withObject:self withObject:nil];
	}
}

- (void)didFail:(NSError *)error
{
  [self popToRootViewControllerAnimated:NO];
  
  // Reset the number of selections
  [AGIPCGridItem performSelector:@selector(resetNumberOfSelections)];
  
  if (self.didFailBlock)
    self.didFailBlock(error);
  
  if (_pickerFlags.delegateDidFail)
  {
		[self.delegate performSelector:@selector(agImagePickerController:didFail:) withObject:self withObject:error];
	}
}
@end
