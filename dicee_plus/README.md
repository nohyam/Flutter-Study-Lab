# dicee_plus

기본 Dicee 튜토리얼을 확장해 테마/구조 분리, 히스토리 보드, UI 개선을 적용한 플러스 버전입니다.
라이트/다크 테마, 파일 구조 분리, 최근 합계 히스토리(10칸) 표시, 롤 버튼 분리 등을 개선했습니다.

## 주요 기능
- Roll 버튼을 누를 때마다 1~6 난수 생성, 주사위 이미지 즉시 갱신
- 최근 10개의 합계를 1행 표로 표시—새 값이 맨 앞에 쌓이고 넘치면 맨 끝 값 자동 제거
- Material 3 + ThemeMode.system 채택, AppBar/배경 일관 적용
- lib/app.dart(앱 루트), lib/screens/dice_screen.dart(화면), lib/theme/app_theme.dart(테마)로 모듈화
- Row/Expanded/Table로 반응형 배치, 중앙 정렬 및 여백 최적화

## Preview
https://github.com/user-attachments/assets/21012d55-3b78-4776-bcf4-8cab3650061f