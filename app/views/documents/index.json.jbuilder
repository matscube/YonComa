json.array!(@documents) do |document|
  json.extract! document, :id, :title, :date, :contents, :sent1, :sent2, :sent3, :sent4, :image1, :image2, :image3, :image4
  json.url document_url(document, format: :json)
end
