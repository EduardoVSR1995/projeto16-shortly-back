import signupValidation from '../middlewares/signupValidation.js';
import signinValidation from '../middlewares/signinValidation.js';
import postSignup from '../controllers/postSignup.js';
import postSignin from '../controllers/postSignin.js';
import express from 'express';


const routPosts = express.Router();

routPosts.post("/signup", signupValidation, postSignup);

routPosts.post("/signin", signinValidation, postSignin)

//routPosts.post("/urls/shorten" )

export default routPosts;