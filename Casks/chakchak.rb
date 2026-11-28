cask "chakchak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.12"
  sha256 arm:   "0f694d5f11bdccf3254d264a17efcd116e8f58d6cff5a851d3875f00078406f0",
         intel: "1647c99dad6ec73495b65ef6fa701b916855bf0b00985c3463def1fe0f9cebc6"

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
