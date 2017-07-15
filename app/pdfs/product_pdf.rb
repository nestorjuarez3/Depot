class ProductPdf < Prawn::Document
  def initialize(products)
    super()
    @products = Product.all
    product_title
  end

  def product_title
    table product_title_all do
      row(0).font_style = :bold
      columns(1..3).align = :left
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
  end

  def product_title_all
    [["Title","Description","Url","Price"]] +
    @products.map do |product|
      [product.title,product.description,product.image_url,product.price]
    end
  end
end
