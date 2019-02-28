require 'test_helper'

class PersonalitiesRiasecControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get personalities_riasec_name_url
    assert_response :success
  end

  test "should get avatar_f" do
    get personalities_riasec_avatar_f_url
    assert_response :success
  end

  test "should get avavatar_m" do
    get personalities_riasec_avavatar_m_url
    assert_response :success
  end

  test "should get description" do
    get personalities_riasec_description_url
    assert_response :success
  end

end
