class Post < ApplicationRecord
    ## "하나의 게시글에는 많은 댓글을 가지고 있다" 를 정의
    has_many :comments, dependent: :destroy
end
