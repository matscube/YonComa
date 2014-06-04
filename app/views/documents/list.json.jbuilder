documents = {}
@documents.each do |document|
	documents[document.id] = {
		id: document.id,
		title: document.title,
		date: document.date,
		contents: document.contents,
		sent1: document.sent1,
		sent2: document.sent2,
		sent3: document.sent3,
		sent4: document.sent4
	}
end

json.array! documents