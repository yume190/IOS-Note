//           width      height
// screen    320        
// 
/*
依照機體尺寸 版本 產生中間內容物
*/
    float currSysVer = [[[UIDevice currentDevice] systemName] floatValue];
    float statusBar = 0.0;      //IOS 6
    if(currSysVer >= 7.0){
        statusBar = 20;         //IOS 7
    }
    CGSize size = [UIScreen mainScreen].bounds.size;
    CGRect newTextViewFrame = CGRectMake(0, 0 + statusBar, size.width, size.height - statusBar - 44);
    


