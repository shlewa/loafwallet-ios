# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
workspace 'loafwallet.xcworkspace'
project 'loafwallet.xcodeproj', 'Debug' => :debug,'Release' => :release
use_frameworks!

#Due to bug in firebase
#https://github.com/firebase/firebase-ios-sdk/issues/6682
inhibit_all_warnings!
#####

#Shared Cocopods
def shared_pods
  pod 'Firebase/Crashlytics' 
  pod 'Firebase/Analytics'

  # add after v2.6.0 pod 'SwiftLint'
end

target 'loafwallet' do
  platform :ios, '12.0'
  shared_pods
  
  target 'TodayExtension' do
    inherit! :search_paths
  end
  
  target 'loafwalletTests' do
    inherit! :search_paths
  end
  
end
 
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
