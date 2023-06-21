class Comment < ApplicationRecord
  include Visible # status

  belongs_to :article
end
