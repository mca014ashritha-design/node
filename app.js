const express = require('express');
const app = express();
const port = 5000;

app.get('/', (req, res) => {
    console.log('I am from NodeJs');
    res.send('Hello from Node.js!');
});

app.listen(port, () => {
    console.log(`The app is listening on port ${port}`);
});

