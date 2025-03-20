require "test_helper"

class StateAuxsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_aux = satate_now(:one)
  end

  test "should get index" do
    get state_auxs_path
    assert_response :success
  end

  test "should render index template" do
    get state_auxs_path
    assert_template :index
  end

  test "should load state_auxs into @state_aux" do
    get state_auxs_path
    assert_not_nil assigns(:state_aux)
  end
  # test "should get index" do
  #   get state_auxs_index_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get state_auxs_new_url
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get state_auxs_edit_url
  #   assert_response :success
  # end

  # test "should get create" do
  #   get state_auxs_create_url
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get state_auxs_destroy_url
  #   assert_response :success
  # end

  test "should load state_auxs into @state_auxs" do
    get state_auxs_path
    assert_not_nil assigns(:state_auxs)
  end
end
