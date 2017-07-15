class ProductsReport1 < Prawn::Document
  def to_pdf
    text "abc"
    render
  end
end
