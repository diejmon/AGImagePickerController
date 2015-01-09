## AGImagePickerController(iOS应用图片选择器)


AGImagePickerController is a image picker, support photos multiple choice, to support large map slipping preview, support zoom preview, support for horizontal and vertical screen, supports all iOS devices

AGImagePickerController是一个图片选择器，支持图片多选，支持大图横滑预览，支持放大预览，支持横竖屏，支持所有的iOS设备。

![Screenshot](https://dl.dropboxusercontent.com/u/59801943/Screenshots/AGImagePickerController-1.png)
![Screenshot](https://dl.dropboxusercontent.com/u/59801943/Screenshots/AGImagePickerController-2.png)
![Screenshot](https://dl.dropboxusercontent.com/u/59801943/Screenshots/AGImagePickerController-3.png)
![Screenshot](https://dl.dropboxusercontent.com/u/59801943/Screenshots/AGImagePickerController-4.png)
![Screenshot](https://dl.dropboxusercontent.com/u/59801943/Screenshots/AGImagePickerController-5.png)


### Usage(用法)

``` objective-c
AGImagePickerController *imagePickerController = [[AGImagePickerController alloc] initWithFailureBlock:^(NSError *error) {

        if (error == nil)
        {
            NSLog(@"User has cancelled.");
            [self dismissModalViewControllerAnimated:YES];
        } else
        {     
            NSLog(@"Error: %@", error);
        
            // Wait for the view controller to show first and hide it after that
            double delayInSeconds = 0.5;
            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                [self dismissModalViewControllerAnimated:YES];
            });
        }
            
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
        
    } andSuccessBlock:^(NSArray *info) {
        NSLog(@"Info: %@", info);
        [self dismissModalViewControllerAnimated:YES];
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
    }];
    
    [self presentModalViewController:imagePickerController animated:YES];
    [imagePickerController release];
```

## Contact(联系)

- [GitHub](https://github.com/SpringOx)
- [Email](jiachunke@gmail.com)




