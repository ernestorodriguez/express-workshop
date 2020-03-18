const React = require('react');
const BookCard = require('./BookCard');

module.exports = ({ books }) => {
    const bookCards = books.map((book) =>  <BookCard key={book.id} { ...book } />)
    return (
        <div className="album py-5 bg-light">
            <div className="container">
                <div className="row">
                   { bookCards }
                </div>
            </div>
        </div>
    )
}