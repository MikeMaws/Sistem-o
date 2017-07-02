require 'test_helper'

class MaterialDidaticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_didatico = material_didaticos(:one)
  end

  test "should get index" do
    get material_didaticos_url
    assert_response :success
  end

  test "should get new" do
    get new_material_didatico_url
    assert_response :success
  end

  test "should create material_didatico" do
    assert_difference('MaterialDidatico.count') do
      post material_didaticos_url, params: { material_didatico: { titulo: @material_didatico.titulo, url: @material_didatico.url } }
    end

    assert_redirected_to material_didatico_url(MaterialDidatico.last)
  end

  test "should show material_didatico" do
    get material_didatico_url(@material_didatico)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_didatico_url(@material_didatico)
    assert_response :success
  end

  test "should update material_didatico" do
    patch material_didatico_url(@material_didatico), params: { material_didatico: { titulo: @material_didatico.titulo, url: @material_didatico.url } }
    assert_redirected_to material_didatico_url(@material_didatico)
  end

  test "should destroy material_didatico" do
    assert_difference('MaterialDidatico.count', -1) do
      delete material_didatico_url(@material_didatico)
    end

    assert_redirected_to material_didaticos_url
  end
end
