cask 'limsdevkit' do
  version '0.0.3'
  sha256 'efba19818a754a81de174ffd5684a113ab733f7c2a24c364c6518284c4c9ee31'

  url "https://f001.backblazeb2.com/file/zan-public/homebrew/limsdevkit-v#{version}.dmg"

  name 'LIMS Devkit'
  #homepage ""

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
