# 소개

리스너(관리자)와 스피커(사용자) 가 매일 저녁 3분씩 `오늘 하루 어땠나요?`라는 주제로 `대화`를 나누는 마음 건강 지키미 앱입니다. <br/> (기간: 2022. 06 - 11.(지금은 서버 끊긴 상태)))<br/>
🛍️ 앱스토어 링크: https://apps.apple.com/us/app/%EA%B5%BF%EB%A6%AC%EC%8A%A4%EB%84%88/id1641642480


<br/>

# 개발 환경
- 화면 구성: UIkit
- 디자인 패턴: MVVM, Coordinator
- 의존성 관리 도구: CocoaPods, Swift Package Manager
- 배포: Fastlane
- 네트워킹: Moya
- 비동기프로그래밍: Rxswift, RxCocoa, DispatchQueue(매칭 화면 전환)
- 기타 라이브러리: AgoraRtcKit, Firebase Messaging

<br/>

# 화면

 <img src = "screenshot_readme.png" width="700" height="300">

# 역할

(개발 4명 + 기획 2명 + 디자인 2명 참여)

- 개발 반장으로서의 역할: 매주 회의를 통해 이슈 조정, 기획/디자인 파트와 의견 조율
- iOS 개발자로서의 역할: 리스너와 스피커의 홈/대화 기록/매칭 대기 화면/알림 화면에서의 UI 구성 및 API 호출, FastLane을 통한 CD

