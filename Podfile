# Podfile
use_frameworks!

platform :ios, '9.0'

target 'Weather' do
pod 'RxSwift',    '~> 6.1.0'
pod 'RxCocoa',    '~> 6.1.0'
pod 'Bond', '~> 7.0'
end

# RxTests and RxBlocking make the most sense in the context of unit/integration tests
target 'WeatherTests' do
pod 'RxBlocking', '~> 6.1.0'
pod 'RxTest',     '~> 6.1.0'
end
