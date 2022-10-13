import postSignup from '../controllers/postSignup.js';
import express from 'express';


const routPosts = express.Router();

routPosts.post("/signup", postSignup);

//routPosts.post("/signin")

//routPosts.post("/urls/shorten" )

export default routPosts;