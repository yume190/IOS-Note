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
    
////////////////////////////////////////////////////////////////////////////
//創建新的模擬位置
//new file > resource > GPX file

////////////////////////////////////////////////////////////////////////////
//yumeMyAnnotation.h 設定
#import <MapKit/MapKit.h>

@interface yumeMyAnnotation : NSObject<MKAnnotation>

@property (nonatomic,readonly)CLLocationCoordinate2D coordinate;
@property (nonatomic,readonly,copy)NSString *title;
@property (nonatomic,readonly,copy)NSString *subTitle;

-(id)initWithTitle:(NSString *)theTitle andSubTitle:(NSString*)theSubTitle andCoordinate:(CLLocationCoordinate2D)theCoordinate;
//yumeMyAnnotation.m 設定
@synthesize title,subTitle,coordinate;

-(id)initWithTitle:(NSString *)theTitle andSubTitle:(NSString *)theSubTitle andCoordinate:(CLLocationCoordinate2D)theCoordinate{
    self = [self init];
    if(self){
        coordinate = theCoordinate;
        title = theTitle;
        subTitle = theSubTitle;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////
//位置宣告方式
CLLocationCoordinate2D location;
location.longitude = 120.6833034;
location.latitude = 24.1508507;
//設定初始位置以及範圍
MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location, 5000, 5000);
[self.mapView setRegion:viewRegion];
//插annotation
yumeMyAnnotation *t1 = [[yumeMyAnnotation alloc]initWithTitle:@"T1" andSubTitle:@"T11" andCoordinate:l1];
[self.mapView addAnnotation:t1];
