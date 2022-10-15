import getUrlsOpenShorturl from '../controllers/getUrlsOpenShorturl.js';
import getUrlId from '../controllers/getUrlId.js';
import express from 'express';


const routGets = express.Router();

routGets.get("/urls/:id", getUrlId);

routGets.get("/urls/open/:shortUrl", getUrlsOpenShorturl);

//routGets.get("/users/me");

//routGets.get("/ranking")

export default routGets;
