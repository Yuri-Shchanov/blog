require 'test_helper'

class Article < ActiveRecord::Base
  validates :title, presence: true
end

class ArticleTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test 'should not save article without title' do
     article = Article.new
     assert_not article.save
   end
end
