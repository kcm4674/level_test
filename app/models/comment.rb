class Comment < ApplicationRecord
    ## 댓글은 Post에 종속되어 있음.
    belongs_to :post
end
