class Article < ApplicationRecord
  # autor do artigo
  belongs_to :user  

  validates :title, :summary, :category, :body, presence: true
  before_create :set_published_at
  #registrar a data da publicacao

  private

  def set_published_at
    self.published_at ||= Time.current
  end

end
