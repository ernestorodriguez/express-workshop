const React = require('react');

module.exports = ({ title, description, yearPublication, author}) =>  (
        <div className="col-md-4">
            <div className="card mb-4 box-shadow">
                <img className="card-img-top" src="https://via.placeholder.com/225x100" alt="Card image cap" />
                <div className="card-body">
                    <h3>{title}</h3>
                    <p><small>{author}</small></p>
                    <p className="card-text">{description}</p>
                    <div className="d-flex justify-content-between align-items-center">
                        <div className="btn-group">
                        <button type="button" className="btn btn-sm btn-outline-secondary">read more</button>
                        <button type="button" className="btn btn-sm btn-outline-primary">Buy</button>
                        </div>
                        <small className="text-muted">{yearPublication}</small>
                    </div>
                </div>
            </div>
        </div>
);