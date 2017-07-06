require 'test_helper'

class AvaliarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaliar = avaliars(:one)
  end

  test "should get index" do
    get avaliars_url
    assert_response :success
  end

  test "should get new" do
    get new_avaliar_url
    assert_response :success
  end

  test "should create avaliar" do
    assert_difference('Avaliar.count') do
      post avaliars_url, params: { avaliar: { colaboracao: @avaliar.colaboracao, compromisso: @avaliar.compromisso, comunicacao: @avaliar.comunicacao, construcao: @avaliar.construcao, criatividade: @avaliar.criatividade, nota: @avaliar.nota, pcritico: @avaliar.pcritico, user_id: @avaliar.user_id } }
    end

    assert_redirected_to avaliar_url(Avaliar.last)
  end

  test "should show avaliar" do
    get avaliar_url(@avaliar)
    assert_response :success
  end

  test "should get edit" do
    get edit_avaliar_url(@avaliar)
    assert_response :success
  end

  test "should update avaliar" do
    patch avaliar_url(@avaliar), params: { avaliar: { colaboracao: @avaliar.colaboracao, compromisso: @avaliar.compromisso, comunicacao: @avaliar.comunicacao, construcao: @avaliar.construcao, criatividade: @avaliar.criatividade, nota: @avaliar.nota, pcritico: @avaliar.pcritico, user_id: @avaliar.user_id } }
    assert_redirected_to avaliar_url(@avaliar)
  end

  test "should destroy avaliar" do
    assert_difference('Avaliar.count', -1) do
      delete avaliar_url(@avaliar)
    end

    assert_redirected_to avaliars_url
  end
end
