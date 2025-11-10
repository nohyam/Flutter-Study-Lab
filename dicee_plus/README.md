# dicee

플러터 상태와 레이아웃을 연습하기 위한 간단한 주사위 앱입니다. 화면의 주사위를 탭할 때마다 1~6 사이 난수로 이미지가 변경됩니다.

## 기능 / 화면 구성
- 상단 앱바(`AppBar`)와 붉은 배경
- 중앙에 두 개의 주사위 이미지
- 각 주사위를 탭하면 **두 주사위가 동시에** 값 갱신
- 가로 방향 균등 배치(두 주사위 동일 폭)

## 사용한 주요 위젯
- `MaterialApp`, `Scaffold`, `AppBar`
- `Center`, `Row`, `Expanded`
- `TextButton`
- `Image.asset` (에셋 이미지 로딩)
- 상태 관리: `StatefulWidget` + `setState`
- 난수 생성: `Random()`

## Preview
[dicee.mp4](assets/screenshots/dicee.mp4)