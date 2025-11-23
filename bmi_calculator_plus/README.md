# bmi_calculator

기본 bmi_calculator 앱을 바탕으로,
프로젝트 구조·테마·위젯·상태 관리·UI/UX 를 전반적으로 개선한 플러스 버전입니다.

BMI 계산 기능 자체는 그대로 유지하면서,
“실제 프로젝트처럼 설계·정리하는 연습”에 집중했습니다.

## 개선점
### 1.프로젝트 구조를 역할별로 분리
기본 버전에서는 대부분의 코드가 한두 개 폴더 안에 모여 있었지만,
플러스 버전에서는 다음처럼 역할 기준으로 나누는 연습을 했습니다.

- constants : 색상, 크기 같은 디자인 상수만 모아둔 폴더
- domain : BMI 계산 로직만 담당하는 CalculatorBrain 위치
- screens : InputPage, ResultPage 같은 “화면 단위” 위젯
- widgets : 재사용 가능한 카드, 버튼, 입력 영역 등
- theme : ColorScheme, TextTheme, SliderTheme, 전체 ThemeData를 관리

### 2.입력 화면을 여러 위젯으로 쪼개서 읽기 쉽게
기본 버전의 InputPage는 성별 카드, 키 슬라이더, 몸무게/나이 카드, 버튼 등이
한 파일 안에 섞여 있어서 조금 길고 복잡한 편이었습니다.

플러스 버전에서는 입력 UI를 다음처럼 나눴습니다.

- 성별 선택 영역 → GenderSelectorRow
- 키 + 슬라이더 영역 → HeightSelector
- 몸무게/나이 카드 → 하나의 공용 위젯(WeightAndAgeRow) 재사용
- 하단 버튼 → BottomButton

이렇게 나누면서 InputPage는 “레이아웃만 읽으면 되는 화면”이 되고 각 위젯은 자기 역할만 집중하도록 설계되었습니다.

### 3.상태(state)를 부모로 올리고, 자식은 값 + 콜백만 받도록
기본 버전에서는 InputPage 안에 성별, 키, 몸무게, 나이 상태가 있고,
각 카드 안에서도 setState를 쓰는 방식이 섞여 있었습니다.

플러스 버전에서는 
- selectedGender, height, weight, age 상태는 모두 InputPage 한 군데에서만 관리하고,
- 자식 위젯들은 다음과 같은 패턴으로 바꿨습니다. “현재 값”을 전달받고 “값이 바뀌었을 때 호출할 콜백”을 전달받는 구조

### 4.재사용 가능한 위젯 정리
플러스 버전에서는 다음 역할을 가진 공용 위젯들을 정리했습니다.

- ReusableCard : 공통 카드 레이아웃 + 탭 제스처 처리 + 애니메이션
- GenderSelectorRow : 남/여 카드 두 개를 한 줄로 보여주는 컴포넌트
- HeightSelector : “HEIGHT + 숫자 + 슬라이더” 컴포넌트
- WeightAndAgeRow : “레이블 + 숫자 + -/+ 버튼” 구조를 weight/age에 재사용
- RoundIconButton : 동그란 + / - 버튼
- BottomButton : 하단 메인 액션 버튼

기본 버전에서는 비슷한 코드가 여러 군데 흩어져 있었지만,
플러스 버전에서는 의미 있는 단위로 묶어서
“나중에 이름만 보고도 역할이 보이는 위젯”들로 정리했습니다.

### UI/UX 디테일 추가
기능은 비슷하지만, 사용감과 시각적인 부분에서 조금 더 손을 봤습니다.
- 카드 선택 상태를 단순 색 변경뿐 아니라 AnimatedContainer로 margin/색 변경을 부드럽게 보여주도록 변경
- BMI 결과의 색상을 빨강, 초록, 노랑으로 나누어 시각적인 효과를 높였습니다.
- 텍스트 스타일을 TextTheme로 통일해서 “제목/숫자/설명/버튼 텍스트”의 일관성을 높였습니다.
- 슬라이더 스타일을 화면이 아닌 테마에서 제어하도록 바꿔, 여러 슬라이더를 추가해도 모양이 통일되도록 설계했습니다.

## Preview
https://github.com/user-attachments/assets/549310bd-1fcf-4df7-8d27-4f4e48161e93