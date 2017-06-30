require 'test_helper'

class MaterialdidaticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materialdidatico = materialdidaticos(:one)
  end

  test "should get index" do
    get materialdidaticos_url
    assert_response :success
  end

  test "should get new" do
    get new_materialdidatico_url
    assert_response :success
  end

  test "should create materialdidatico" do
    assert_difference('Materialdidatico.count') do
      post materialdidaticos_url, params: { materialdidatico: { descricao: @materialdidatico.descricao, link: @materialdidatico.link, task_id: @materialdidatico.task_id } }
    end

    assert_redirected_to materialdidatico_url(Materialdidatico.last)
  end

  test "should show materialdidatico" do
    get materialdidatico_url(@materialdidatico)
    assert_response :success
  end

  test "should get edit" do
    get edit_materialdidatico_url(@materialdidatico)
    assert_response :success
  end

  test "should update materialdidatico" do
    patch materialdidatico_url(@materialdidatico), params: { materialdidatico: { descricao: @materialdidatico.descricao, link: @materialdidatico.link, task_id: @materialdidatico.task_id } }
    assert_redirected_to materialdidatico_url(@materialdidatico)
  end

  test "should destroy materialdidatico" do
    assert_difference('Materialdidatico.count', -1) do
      delete materialdidatico_url(@materialdidatico)
    end

    assert_redirected_to materialdidaticos_url
  end
end
