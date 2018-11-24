cask 'limsdevkit' do
  version '0.0.1'
  sha256 '5e70de42043947f6ba396e1c1bda05dfdbaa84634ecfe4ea9357c2efaf38ce49'

  url "https://github.com/zanconsulting/native-messaging-tester/releases/download/#{version}/zan-native-messaging-tester-#{version}-osx-x64.dmg"
  url "https://f001.backblazeb2.com/file/zan-public/homebrew/limsdevkit-v#{version}.dmg"
  
  name 'LIMS Devkit'
  #hompage ""

  app 'LIMSDevkit.app'
end
