class Comment < ApplicationRecord
  belongs_to :article

  # <start status>
  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
  # <end status>
end
