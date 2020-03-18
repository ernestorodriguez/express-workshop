const { renderToString } = require('react-dom/server');

module.exports = (page) => {
    return `
    <!DOCTYPE html>
    <html class="no-js" lang="">
        ${renderToString(page)}
    </html>
    `;
}