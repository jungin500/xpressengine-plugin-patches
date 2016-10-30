XpressEngine 연구 프로젝트
==========================

[블렌딩 홈페이지](http://home.blending.kr)에서 실행되는 XpressEngine의 각종 플러그인, 애드온, 모듈 등에 대해 연구하고, 최신 XpressEngine에 이를 포팅&적용함을 주 목적으로 합니다.

***
현재 진행중인 프로젝트
----------------------

# 1. 프로그램
## 1.1. 모듈
### 1.1.1 guestbook (modules\guestbook)
    XE Guestbook(https://www.xpressengine.com/index.php?mid=download&package_id=20187337)을 방명록 리스트가 안보이는 이슈를 수정한
    패키지입니다(이슈 1*): https://github.com/xpressengine/xe-module-guestbook/commit/e4c7fc890061f7cd3e6684af00caeda721d99368).
    해당 패키지는 PHP v7.0.8, XE v1.8.26, MySQL v5.7.16에서 정상 작동합니다.

    > Changelog
        * [2016-10-30] gustbook.*.php 변수가 NULL인 상태에서 사용된 문제 수정(Creating default object from empty value)
        * [2016-10-30] ./queries/getGuestbookItemList.xml 에서 잘못된 Query 질의 수정 (* 이슈 1에 따름)
        
***
## 1.2. 애드온

***
## 1.3. 위젯
### 1.3.1 contentextended (widgets\contentextended)
	컨텐츠 확장 위젯(https://www.xpressengine.com/index.php?mid=download&package_id=21127741)을 PHP 7.0에 맞춰 업데이트한 패키지입니다.
	해당 패키지는 PHP v7.0.8, XE v1.8.26에서 정상 작동합니다.

	> Changelog
	* [2016-10-22] contentextended.class.php 변수가 NULL인 상태에서 사용된 문제 수정(Creating default object from empty value)

### 1.3.2 navigator (widgets\navigator)
	네비게이터 (메뉴 출력기)(https://www.xpressengine.com/index.php?mid=download&package_id=18324338)를 PHP 7.0에 맞춰 업데이트한 패키지입니다.
	해당 패키지는 PHP v7.0.8, XE v1.8.26에서 정상 작동합니다.

	> Changelog
	* [2016-10-22] navigator.class.php 변수가 NULL인 상태에서 사용된 문제 수정(Creating default object from empty value)
    
***
## 1.4. 에디터 컴포넌트

***
## 1.5. 단락에디터 컴포넌트

***
# 2. 스킨
## 2.1. 레이아웃

***
## 2.2. 모바일 레이아웃

***
## 2.3. 모듈 스킨

***
## 2.4. 모듈 모바일 스킨
### 2.4.1. sweetMobileBoard (modules\board\m.skins\sweetMobileBoard)
	Sweet Mobile 모바일 게시판 스킨(https://www.xpressengine.com/index.php?mid=download&package_id=22753558)을 XEIcon v2.2.0에 맞춰 업데이트한 패키지입니다.
	해당 패키지는 XE v1.8.26에서 정상 작동합니다.
	
	> Changelog
	* [2016-10-26] XEIcon v1.x 버전에서 XEIcon v2.2.0으로 수정; 각종 아이콘 변경.

### 2.4.2 blending-blueFly (modules\guestbook\m.skins\blending-blueFly)
    XE Guestbook에 기본 탑재된 blueFly 스킨을 기반으로 제작하였습니다.
    해당 패키지는 PHP v7.0.8, XE 1.8.26에서 정상 작동합니다.

    > Changelog
        * [2016-10-30] 방명록 리스트 CSS 수정
        * [2016-10-30] 전체 한글화(이미지 제외)
        * [2016-10-30] 상단 홈버튼 추가
    
***
## 2.5. 위젯 스킨

***
## 2.6. 위젯 스타일

***
## 2.7. 에디터 스타일

***
## 2.8. 회원 레벨 아이콘

***
# 3. 기타
## 3.1. 데이터 이전 툴
### 2.4.1. copypict (tools\copypict.sh)
	[Copy Pictures]
	이 툴은 이전 XE 버전에서 새로운 XE 버전으로 Migrate할 경우 모든 사진이 깨져 나오는 문제를 해결하기 위해 제작되었습니다.
	--
	사용법: copypict.sh moduleNum1 moduleNum2
	* 최초 사용시 copypict.sh 내 최상단 설정을 변경합니다.
	  해당 설정에는 이전 XE 주소, 새로운 XE 주소가 포함되어 있습니다.
	* moduleNum1은 기존 XE에서의 게시판 module ID를 입력합니다.
	* moduleNum2는 migrate 대상 XE에서의 게시판 module ID를 입력합니다.
	
	> Changelog
	* [2016-10-26] XEIcon v1.x 버전에서 XEIcon v2.2.0으로 수정; 각종 아이콘 변경.

***
## 3.2. 기타

***
## 3.3. XE코어(서드파티)


***