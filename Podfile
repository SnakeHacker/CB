source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
target 'CB' do
pod 'AVOSCloud'
pod "Koloda"
pod "Hero"
pod "RevealingSplashView"
pod "Pastel"
end

post_install do |installer|
`find Pods -regex 'Pods/pop.*\\.h' -print0 | xargs -0 sed -i '' 's/\\(<\\)pop\\/\\(.*\\)\\(>\\)/\\"\\2\\"/'`
end

