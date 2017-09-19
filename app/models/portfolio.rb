class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'angular')
  end

   scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'ruby on rails') }
end
