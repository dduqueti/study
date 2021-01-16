var books = [];

function addFavoriteBook(name){
  if(!null){
    console.log("null test");
  }
  if(!name.includes('Great')){
    books.push(name);
  }
}

function printFavoritesBook(books) {
  for(let i=0; i<books.length; i++){
    console.log(`Favorite book: ${books[i]}`);
  }

  for(let book of books){
    console.log(`Favorite book: ${book}`);
  }
}

addFavoriteBook('Great stuff');
addFavoriteBook('Bad stuff');
addFavoriteBook('Mediocre stuff');
printFavoritesBook(books);
