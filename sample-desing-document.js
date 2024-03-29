{
  "language": "javascript",
  "views": {
    "all": {
      "map": "function(doc) { emit(doc.title, doc);  }"
    },
    "by_title": {
      "map": "function(doc) { if (doc.title) { emit(doc.title, null); } }"
    },
    "by_keyword": {
      "map": "function(doc) { for (var i = 0; i < doc.keywords.length; i++) { emit(doc.keywords[i], null); } }",
      "reduce": "_count"
    },
    "by_ingredients": {
      "map": "function(doc) { for (var i = 0; i < doc.ingredients.length; i++) { emit(doc.ingredients[i].ingredient, null) } }"
    },
    "by_ingredient_time": {
      "map": "function(doc) { if (doc.ingredients) { for (var i = 0; i < doc.ingredients.length; i++) { if (doc.ingredients[i].ingredient != null) { emit([doc.ingredients[i].ingredient, parseInt(doc.cooktime)], null); } } } }"
    }
  },
  "shows": {
    "recipe": "function (doc, req) { var output; output = '<h1>' + doc.title + '</h1>'; output += '<p>' + doc.subtitle + '</p>'; output += '<h2>Ingredients</h2>'; output += '<ul>'; for (var i = 0;  i < doc.ingredients.length;  i++) {output += '<li>' + doc.ingredients[i].measure + ' ' + doc.ingredients[i].ingredient + '</li>'; }output += '</ul>'; output += '<h2>Method</h2>'; output += '<ol>'; for (var i = 0;  i < doc.method.length;  i++) {output += '<li>' + doc.method[i].text + '</li>'; }output += '</ol>'; return output; }",
    "asxml": "function (doc, req) { return {'body': '<recipe><title>' + doc.title + '</title></recipe>', 'headers': {'Content-type': 'application/json' } }; }"
  }
}
