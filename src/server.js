import deletes from './routers/delete.routers.js';
import posts from './routers/posts.routers.js';
import gets from './routers/gets.router.js';
import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';

dotenv.config()

const app = express();
app.use(express.json());
app.use(cors())

app.use(posts);

app.use(gets);

app.use(deletes);

app.listen(process.env.PORT , ()=> console.log(`Server listening on port ${process.env.PORT}. `) )