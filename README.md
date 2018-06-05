#集成多返联盟广告 SDK 指南

###获取多返联盟开发者参数

1. 登录『多返联盟开发者服务平台』，`UserKey`和`AppKey`可以分别从『[账户管理-基本信息]』以及『应用管理』中找到，这两个参数是初始化 SDK 的必备参数。


2. UserKey 信息的获取

   ![](https://static.pgyer.com/image/view/admin_images/b0714cb39d6bc8b3ae4c3392c82c04c9)

3. AppKey信息的获取

   ![](https://static.pgyer.com/image/view/admin_images/2867655404ac703d94f4b7382da96880)

### SDK 集成
Duofan提供两种集成方式供iOS开发者选择

* 通过CocoaPods集成
* 手动集成

####通过CocoaPods集成

在工程的Podfile里面添加以下代码：

```
  pod 'DFMobileAdsSDK'	
```

保存并执行pod install,然后用后缀为.xcworkspace的文件打开工程。
>注意:

>**命令行下执行pod search DFMobileAdsSDK,如显示的DFMobileAdsSDK版本不是最新的，则先执行pod repo update操作更新本地repo的内容**

>关于CocoaPods的更多信息请查看 [CocoaPods官方网站](https://cocoapods.org/).

####手动集成
* 下载 [DuoFan iOS SDK](https://github.com/rikyou215/DFMobileAdsSDK/raw/master/DFMobileAdsSDK.zip)
* 拖拽DFMobileAds.framework和DFMobileAdsFramework.bundle文件到Xcode工程内(请勾选Copy items if needed选项)

### 初始化SDK

####导入头文件
在工程的AppDelegate.m文件导入头文件

>`#import <DFMobileAds/DFMobileAds.h>`

>如果是`Swift`工程，请在对应bridging-header.h中导入

初始化DuoFan
在工程AppDelegate.m的application:didFinishLaunchingWithOptions:方法中初始化：

* Objective-C

 ```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 		[DFMobileAds configureWithUserkey:@"你的UserKey" withAppKey:@"你的AppKey"];
      	return YES;
}
 ```
在需要弹出DuoFan页面的ViewController的.m文件引用

	`#import <DFMobileAds/DFMobileAds.h>`
	
	调用以下代码弹出DuoFan页面

 ```
    DFAdListViewController *vc = [[DFAdListViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

 ```
 [示例工程](https://github.com/rikyou215/DuoFanSDKDemoForObjective-C/archive/master.zip)
	
* Swift

 ```
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		DFMobileAds.configure(withUserkey: "你的UserKey", withAppKey:"你的AppKey");
		return true
}
```
在需要弹出DuoFan页面的swift文件调用以下代码

 ```
    let dfvc = DFAdListViewController();
    self.navigationController?.pushViewController(dfvc, animated: true);

 ```
 [示例工程](https://github.com/rikyou215/DuoFanSDKDemoForSwift/archive/master.zip)



