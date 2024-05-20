import express from 'express';
import {
  getEntries2019, 
  getEntrybyIndex2019, 
  getEntries2020,
  getEntrybyIndex2020,
  getEntries2021,
  getEntrybyIndex2021,
  getEntries2023,
  getEntrybyIndex2023
} from './Queries';

const app: express.Application = express();

let port: any = process.env.PORT || 8080;

app.get('/', (req, res) => {
    res.send('Hello, TypeScript with Express!');
});

app.get("/2019", getEntries2019);
app.get("/2019/:index", getEntrybyIndex2019);
app.get("/2020", getEntries2020);
app.get("/2020/:index", getEntrybyIndex2020);
app.get("/2021", getEntries2021);
app.get("/2021/:index", getEntrybyIndex2021);
app.get("/2023", getEntries2023);
app.get("/2023/:index", getEntrybyIndex2023);



app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
