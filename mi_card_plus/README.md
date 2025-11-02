# mi_card

기본 mi_card 예제를 확장해서 **카드를 누르면 실제 액션이 실행되는** 인터랙티브 버전입니다.  
전화, 이메일, GitHub 링크를 `url_launcher` 패키지로 연동했고, 카드 UI는 재사용 가능한 위젯(`AppCard`)으로 분리했습니다.

## 주요 기능

- 프로필 화면(아바타, 이름, 직무) 기본 UI
- 연락처/이메일/깃허브를 **카드 한 번 탭**으로 열기
    - 전화: `tel:` 스킴으로 기본 전화 앱 실행
    - 이메일: `mailto:` 스킴으로 기본 메일 앱 실행
    - 깃허브: `https://...` 링크 열기
- 공통 카드 위젯 `AppCard` 로 UI 재사용
- 정적 정보(전화, 이메일, 깃허브 주소)를 `static const` 로 한 곳에 모아 관리
- `lib/main.dart` ↔ `lib/src/app.dart` 분리로 구조 정리

## Preview
<img src="assets/screeenshots/mi_card_plus.gif" width="50%" height="50%">