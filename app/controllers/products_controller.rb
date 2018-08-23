class ProductsController < ApplicationController
  before_action :find_product, only: :show
  before_action :get_products_from_cart, only: :index #get items from cart comes from ApplicationController

  def index
    @products = Product.all
  end

  def show
  end

  def food_type
   find_products
  end



  private

  def find_product
    @product = Product.find(params[:id])
  end

  def find_products
    dairy = ["dairy/dai_pid_2003301_z.jpg",   "dairy/dai_natyolk_natwhtlg_z.jpg",
    "dairy/dai_pid_2003188_z.jpg", "dairy/dai_pid_2002509_z.jpg","dairy/d1.jpg",
    "dairy/dai_orgval_sourcrm_z.jpg"]

    @pics_array = []
    icon_array = ["vegetables.jpg", "meats.jpg", "dairy.jpg", "fruits.jpg"]
    @food_type = params[:food_type]
    @products = Product.where(food_type: @food_type)
    if @food_type == "dairy"
    @icon =  icon_array[2]
    @pics_array = dairy

    elsif @food_type == "meat"
       @icon = icon_array[1]
     elsif @food_type == "vegetable"
       @icon =  icon_array[0]
    else
      @icon =  icon_array[3]
  end

end







end
