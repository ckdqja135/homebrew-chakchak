# 착착 (Chakchak) Homebrew

대화와 작업물을 하나의 협업 공간으로 연결하는 착착의 맥 데스크톱 앱을 Homebrew 로 설치합니다.

## 설치

```sh
brew install --cask ckdqja135/chakchak/chakchak
```

- macOS 13 이상, 애플 실리콘·인텔 모두 됩니다.
- 처음 열 때 막히면 **시스템 설정 → 개인정보 보호 및 보안**에서 '그래도 열기'를 누르세요.
- 앱을 켜면 같은 와이파이의 착착을 찾아 참여하거나, 초대 링크로 참여하거나, 이 PC에 서버를 만들 수 있어요.

## 업데이트 · 지우기

```sh
brew upgrade --cask chakchak
brew uninstall --cask chakchak        # 앱만 지우기
brew uninstall --zap --cask chakchak  # 설정(서버 주소 등)까지 지우기
```
