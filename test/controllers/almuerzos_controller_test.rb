require 'test_helper'

class AlmuerzosControllerTest < ActionController::TestCase
  setup do
    @almuerzo = almuerzos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:almuerzos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create almuerzo" do
    assert_difference('Almuerzo.count') do
      post :create, almuerzo: { descripcion: @almuerzo.descripcion, foto: @almuerzo.foto, nombre: @almuerzo.nombre, precio: @almuerzo.precio, stock: @almuerzo.stock }
    end

    assert_redirected_to almuerzo_path(assigns(:almuerzo))
  end

  test "should show almuerzo" do
    get :show, id: @almuerzo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @almuerzo
    assert_response :success
  end

  test "should update almuerzo" do
    patch :update, id: @almuerzo, almuerzo: { descripcion: @almuerzo.descripcion, foto: @almuerzo.foto, nombre: @almuerzo.nombre, precio: @almuerzo.precio, stock: @almuerzo.stock }
    assert_redirected_to almuerzo_path(assigns(:almuerzo))
  end

  test "should destroy almuerzo" do
    assert_difference('Almuerzo.count', -1) do
      delete :destroy, id: @almuerzo
    end

    assert_redirected_to almuerzos_path
  end
end
