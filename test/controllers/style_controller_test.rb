require 'test_helper'

class StyleControllerTest < ActionDispatch::IntegrationTest
  test "should get atoms" do
    get style_atoms_url
    assert_response :success
  end

  test "should get molecules" do
    get style_molecules_url
    assert_response :success
  end

  test "should get organisms" do
    get style_organisms_url
    assert_response :success
  end

end
