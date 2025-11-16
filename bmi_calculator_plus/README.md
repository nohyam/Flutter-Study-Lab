# bmi_calculator

이 앱은 사용자의 키와 몸무게를 입력받아 BMI를 계산하고,
결과에 따라 건강 상태(Underweight, Normal, Overweight)를 시각적으로 보여주는 Flutter 앱입니다.

## 주요 기능
- BMI 계산 기능: 키(cm)와 몸무게(kg)를 입력하면 BMI를 자동 계산 
- 결과 페이지: BMI 수치, 상태(Underweight / Normal / Overweight), 설명 메시지 표시 
- 테마 커스터마이징: Material 3 기반 색상 시스템 적용 및 컬러스킴 통일 
- 화면 전환: Navigator를 이용한 입력 화면 → 결과 화면 이동 
- 구조화된 코드: CalculatorBrain 클래스로 계산 로직 분리, UI와 로직 분리 유지 

## 학습 포인트

- setState를 통한 상태관리의 기본 원리 이해 
- Navigator.push / pop을 통한 화면 이동 구조 
- 클래스로 계산 로직을 분리하는 아키텍처적 사고 
- Material 3 테마 시스템(ColorScheme, AppBarTheme 등) 적용 실습 
- UI, 로직, 상태를 분리하는 설계 패턴 이해

## Preview
https://github.com/user-attachments/assets/29c7f0bd-c188-49f3-82ff-d98d97827f13