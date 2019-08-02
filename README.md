# 전투력 측정기
<div align="center"><img src="/public/img/freezer.jpg?raw=true" width="500px"></div>


## 1. Ruby/Ruby on Rails 정보
* Ruby : 2.6.3
* Rails : 5.2.3
 

## 2. 개요
* 해당 Github 자료는 `직장인 멋쟁이 사자처럼 : 전투력 측정` 실습 세션에 대한 정답입니다.

## 3. LV에 따른 코드 입력과정 (Commit 기록)
1) LV 1 : CRUD <a href="https://github.com/kcm4674/level_test/commit/6d6d34abaa30509eecd5187f7a0696f17972c567">[클릭]</a>
2) LV 2 : Devise Gem 설치 <a href="https://github.com/kcm4674/level_test/commit/611641815198e27435009bc984fd3b4ee5e8f9b1">[클릭]</a>
3) LV 3 : Comment <a href="https://github.com/kcm4674/level_test/commit/ae700de7577f79de0c281a9558493c34e480d4c7">[클릭]</a>
4) LV 4 : Comment 비동기 처리 (댓글 작성만) <a href="https://github.com/kcm4674/level_test/commit/3cdd81fd592c2161e31080ba0f04ea71f2a49027">[클릭]</a>
5) LV 5 : CRUD에서 게시글 작성 시 어떤 유저가 글을 썼는지 Post 모델 기록에 남기기 <a href="https://github.com/kcm4674/level_test/commit/70b4e138b1485ea30a9379499381f24de6238c58">[클릭]</a>

## 4. AWS Cloud9으로 프로젝트 가져가기

    git clone https://github.com/kcm4674/level_test
    cd level_test
    gem install rails --version=5.2.3
    bundle install
    rails s