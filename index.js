const express = require('express');
const uuid = require('uuid'); // Import the uuid library

const app = express();

// Generate a unique container ID
const containerId = uuid.v4();

app.get('/', (req, res) => {
    res.status(200).json({ success: true, message: 'message received', containerId });
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
    console.log('Listening to port 4000 at ' + containerId);
});
