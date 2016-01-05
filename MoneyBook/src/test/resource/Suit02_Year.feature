@Suit02
Feature: Moneybook GNB>Year scenario

Scenario: 14.날짜네비게이션 정상이동
	Given GNB일년보기로 이동
	When 내역쓰기> 내년날짜로 설정> 내역작성 후 저장(수입/지출)
	When 내역쓰기> 작년날자로 설정> 내역작성 후 저장(수입/지출)
	Then 내년 날짜에 저장된 내역 확인
	Then 작년 날짜에 저장된 내역 확인
	
Scenario: 15.수입/지출 내역검색	
	Given 검색버튼 선택
    When 수입내역 '사용내역'로 검색
    When 지출내역 '사용처'로 검색
    Then 지출내역 '태그'로 검색