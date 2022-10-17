import authorizationValidation from '../middlewares/authorizationValidation.js';
import getUrlsOpenShorturl from '../controllers/getUrlsOpenShorturl.js';
import getsRanking from '../controllers/getsRanking.js';
import getUsersMe from '../controllers/getUsersMe.js';
import getUrlId from '../controllers/getUrlId.js';
import express from 'express';
import cors from 'cors'


const routGets = express.Router();

routGets.get("/urls/:id", getUrlId);

routGets.get("/urls/open/:shortUrl", getUrlsOpenShorturl);

routGets.get("/users/me", authorizationValidation, getUsersMe).use(cors());

routGets.get("/ranking", getsRanking)

export default routGets;
