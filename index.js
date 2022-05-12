var http = require("http")

http.createServer(function (req, res) {
    res.writeHead(200, {"Content-Type": "text/html"});
    res.end(`
    <html>
        <body>
            <h2>My node app</H2>
            <p>
            Just a simple node.js application
            </p>
        </body>
    </html>
    `);
}).listen(80000)
console.log("Server running on port 8000")