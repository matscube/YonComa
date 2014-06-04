products = {}
@products.each do |product|
	products[product.id] = {
		id: product.id,
		title: product.title,
		date: product.date,
		contents: product.contents,
		sent1: product.sent1,
		sent2: product.sent2,
		sent3: product.sent3,
		sent4: product.sent4,
		image1: product.image1,
		image2: product.image2,
		image3: product.image3,
		image4: product.image4
	}
end

json.array! products