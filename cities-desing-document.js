{
  "language": "javascript",
  "views": {
    "bynamecity": {
      "map": "function(doc) { if (doc.name && doc.city) { emit([doc.name, doc.city], doc.sales); } }",
      "reduce": "_sum"
    }
  }
}
