require 'test_helper'

class TipoPucletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_puclet = tipo_puclets(:one)
  end

  test "should get index" do
    get tipo_puclets_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_puclet_url
    assert_response :success
  end

  test "should create tipo_puclet" do
    assert_difference('TipoPuclet.count') do
      post tipo_puclets_url, params: { tipo_puclet: { nome: @tipo_puclet.nome } }
    end

    assert_redirected_to tipo_puclet_url(TipoPuclet.last)
  end

  test "should show tipo_puclet" do
    get tipo_puclet_url(@tipo_puclet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_puclet_url(@tipo_puclet)
    assert_response :success
  end

  test "should update tipo_puclet" do
    patch tipo_puclet_url(@tipo_puclet), params: { tipo_puclet: { nome: @tipo_puclet.nome } }
    assert_redirected_to tipo_puclet_url(@tipo_puclet)
  end

  test "should destroy tipo_puclet" do
    assert_difference('TipoPuclet.count', -1) do
      delete tipo_puclet_url(@tipo_puclet)
    end

    assert_redirected_to tipo_puclets_url
  end
end
