Adaptive Screen
========

 *          width  height
 * screen    320    






    float currSysVer = [[[UIDevice currentDevice] systemName] floatValue];
    float statusBar = 0.0;      //IOS 6
    if(currSysVer >= 7.0){
        statusBar = 20;         //IOS 7
    }
    CGSize size = [UIScreen mainScreen].bounds.size;
    CGRect newTextViewFrame = CGRectMake(0, 0 + statusBar, size.width, size.height - statusBar - 44);
    


