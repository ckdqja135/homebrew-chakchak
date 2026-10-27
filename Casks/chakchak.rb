cask "chakchak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "e8c59009f43d24e6c6fa7f9d4cbabf55a7a9da332d0b32bc597374be106bb56e",
         intel: "168c92273913ea3f359f93d9005b50d969ac86fda390d41eff766a88213cf158"

  url "https://github.com/ckdqja135/homebrew-chakchak/releases/download/v#{version}/Chakchak-mac-#{arch}.dmg"
  name "Chakchak"
  name "착착"
  desc "대화와 작업물을 하나의 협업 공간으로 연결"
  homepage "https://github.com/ckdqja135/homebrew-chakchak"

  depends_on macos: ">= :ventura"

  app "Chakchak.app"

  zap trash: [
    "~/Library/Application Support/Chakchak",
    "~/Library/Preferences/com.chakchak.desktop.plist",
    "~/Library/Saved Application State/com.chakchak.desktop.savedState",
  ]

  caveats <<~EOS
    처음 열 때 막히면 시스템 설정 → 개인정보 보호 및 보안에서 '그래도 열기'를 누르세요.
    앱을 켜면 착착 서버 주소를 넣고 연결하면 됩니다.
  EOS
end
