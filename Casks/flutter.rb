cask "flutter" do
  version :latest
  sha256 "1b749721d4e9c9d6712ae1701972a87c69743c25cf369b966dc2626af165db84"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.22.2-stable.zip"

  name "flutter"
  homepage "https://flutter.dev"

  binary "flutter/bin/flutter", target: "flutter"
  
  postflight do
    # Upgrade stable channel to the latest version
    system_command '/usr/local/bin/flutter',
                   args: ['upgrade', '--force'],
                   sudo: false
  end
end
