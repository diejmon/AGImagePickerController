

#import "AGImagePickerController.h"

@interface AGImagePickerController (Private)
- (void)didFinishPickingAssets:(NSArray *)selectedAssets;
- (void)didCancelPickingAssets;
- (void)didFail:(NSError *)error;
@end
