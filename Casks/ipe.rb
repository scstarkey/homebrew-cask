cask 'ipe' do
  version '7.2.7'
  sha256 '13bd32ecfb77d7c3e073436f4b7e8b8532706a80aeec9575172670dc91908b25'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org/'

  app 'Ipe.app'

  zap delete: [
                '~/.ipe',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl',
                '~/Library/Preferences/org.otfried.ipe.Ipe.plist',
                '~/Library/Saved Application State/org.otfried.ipe.savedState',
              ]
end
