const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello World! V4');
    console.log('received a request!');
});

app.listen(port, () => console.log(`Example app v4 listening on port ${port}!`));