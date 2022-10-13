import posts from './routers/posts.routers.js'
import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import pg from 'pg';

dotenv.config()

const app = express();
app.use(express.json());
app.use(cors())

app.use(posts);

app.listen(process.env.PORT , ()=> console.log(`Server listening on port ${process.env.PORT}. `) )