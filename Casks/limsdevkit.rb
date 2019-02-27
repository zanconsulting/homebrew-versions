cask 'limsdevkit' do
  version '0.0.4'
  sha256 'ccffa4a993f2647227036544a40181af8cb11066372a1dd89827fd0239297dc0'

  url "https://f001.backblazeb2.com/file/zan-public/homebrew/limsdevkit-v#{version}.dmg"

  name 'LIMS Devkit'
  homepage "https://confluence.stowers.org/x/4gTGBg"

  app 'LIMSDevkit.app'

  postflight do
    # Run application once to register protocol handlers
    system_command "#{appdir}/LIMSDevkit.app/Contents/MacOS/limsdevkit",
             args: ['--setup-and-quit'],
             sudo: false,
             print_stderr: false

    # Symlink CLI to /usr/local/bin
    system_command "ln",
             args: ['-sf', "#{appdir}/LIMSDevkit.app/Contents/Resources/app/bin/limsdevkit", "/usr/local/bin/limsdevkit"]

  end

  caveats "The limsdevkit CLI application is included in this package and will be linked in /usr/local/bin/"

end
