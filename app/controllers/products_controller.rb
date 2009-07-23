class ProductsController < ApplicationController
  # GET /products
  # GET /products.xml
  def index
    @products = Product.find(:all)
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    if @product.save
      flash[:notice] = I18n.t(:created_success, :default => '{{model}} was successfully created.', :model => Product.human_name, :scope => [:railties, :scaffold])
      redirect_to(@product)
    else
      render :action => "new"
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      flash[:notice] = I18n.t(:updated_success, :default => '{{model}} was successfully updated.', :model => Product.human_name, :scope => [:railties, :scaffold])
      redirect_to(@product)
    else
      render :action => "edit"
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to(products_url)
  end
end
