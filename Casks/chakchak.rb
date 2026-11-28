cask "chakchak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.14"
  sha256 arm:   "12f3ada3874992f9fccad32a320748cbc4008dbc2eeb33e4eee18c68dd92c3ff",
         intel: "6628c5fdba5226baf171a3f0f70bdad5a076ed6cfcc82f9aba849938383c8c85"

  url "https://github.com/ckdqja135/homebrew-chakchak/releases/download/v#{version}/Chakchak-mac-#{arch}.dmg"
  name "Chakchak"
  name "착착"
  desc "대화와 작업물을 하나의 협업 공간으로 연결"
  homepage "https://github.com/ckdqja135/homebrew-chakchak"

  depends_on macos: :ventura

  app "Chakchak.app"

  zap trash: [
    "~/Library/Application Support/Chakchak",
    "~/Library/Preferences/com.chakchak.desktop.plist",
    "~/Library/Saved Application State/com.chakchak.desktop.savedState",
  ]

  caveats <<~EOS
    처음 열 때 막히면 시스템 설정 → 개인정보 보호 및 보안에서 '그래도 열기'를 누르세요.
    앱을 켜면 같은 와이파이의 착착을 찾아 참여하거나, 초대 링크로 참여하거나, 이 PC에 서버를 만들 수 있어요.
  EOS
end
