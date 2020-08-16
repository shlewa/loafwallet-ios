# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
workspace 'loafwallet.xcworkspace'
project 'loafwallet.xcodeproj', 'Debug' => :debug,'Release' => :release
use_frameworks!
platform :ios, '13.0'

#Shared Cocoapods
def shared_pods

  pod 'Firebase/Crashlytics' 
  pod 'Firebase/Analytics'
  pod 'CNIntegration', :git => 'https://github.com/ChangeNOW-lab/ChangeNow_Integration_iOS.git', :tag => '0.1.1'

  # add after v2.6.0 pod 'SwiftLint'
end

target 'loafwallet' do
  shared_pods
  
  target 'loafwalletTests' do
    inherit! :search_paths
  end
  
end
