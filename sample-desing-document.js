{
  "language": "javascript",
  "views": {
    "all": {
      "map": "function(doc) { emit(doc.title, doc); }"
    },
    "by_title": {
      "map": "function(doc) { if (doc.title) { emit(doc.title, doc); } }"
    },
    "by_keyword": {
      "map": "function(doc) { for (var i = 0; i < doc.keywords.length; i++) { emit(doc.keywords[i], doc); } }"
    }
  },
  "shows": {
    "recipe": "function(doc, req) { return '<h1>' + doc.title + '</h1>'; }"
  }
}
