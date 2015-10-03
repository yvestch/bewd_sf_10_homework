require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  def new
  end

  def create
      render plain: params[:article].inspect
  end


end
