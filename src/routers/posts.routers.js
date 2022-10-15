import urlsShortenValidation from '../middlewares/urlsShortenValidation.js';
import signupValidation from '../middlewares/signupValidation.js';
import signinValidation from '../middlewares/signinValidation.js';
import postUrlsShorten from '../controllers/postUrlsShorten.js';
import postSignup from '../controllers/postSignup.js';
import postSignin from '../controllers/postSignin.js';
import express from 'express';


const routPosts = express.Router();

routPosts.post("/signup", signupValidation, postSignup);

routPosts.post("/signin", signinValidation, postSignin)

routPosts.post("/urls/shorten", urlsShortenValidation, postUrlsShorten)

export default routPosts;