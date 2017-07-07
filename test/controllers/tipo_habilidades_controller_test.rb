require 'test_helper'

class TipoHabilidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_habilidade = tipo_habilidades(:one)
  end

  test "should get index" do
    get tipo_habilidades_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_habilidade_url
    assert_response :success
  end

  test "should create tipo_habilidade" do
    assert_difference('TipoHabilidade.count') do
      post tipo_habilidades_url, params: { tipo_habilidade: { nome: @tipo_habilidade.nome } }
    end

    assert_redirected_to tipo_habilidade_url(TipoHabilidade.last)
  end

  test "should show tipo_habilidade" do
    get tipo_habilidade_url(@tipo_habilidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_habilidade_url(@tipo_habilidade)
    assert_response :success
  end

  test "should update tipo_habilidade" do
    patch tipo_habilidade_url(@tipo_habilidade), params: { tipo_habilidade: { nome: @tipo_habilidade.nome } }
    assert_redirected_to tipo_habilidade_url(@tipo_habilidade)
  end

  test "should destroy tipo_habilidade" do
    assert_difference('TipoHabilidade.count', -1) do
      delete tipo_habilidade_url(@tipo_habilidade)
    end

    assert_redirected_to tipo_habilidades_url
  end
end
