cask 'zan-native-messaging-tester' do
  version '0.0.1'
  sha256 'bb21afe1eece79852da0a6f732bd5b8945676167dcf3f6b511fb892cb45ed873'

  url "https://github.com/zanconsulting/native-messaging-tester/releases/download/#{version}/zan-native-messaging-tester-#{version}-osx-x64.dmg"
  
  name 'Zan Native Messaging Tester'
  homepage 'https://github.com/zanconsulting/native-messaging-tester'

  app 'Zan Native Messaging Tester.app'
end
