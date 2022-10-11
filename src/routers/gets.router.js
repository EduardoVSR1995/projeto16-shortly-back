import express from 'express';


const routerGets = express.Router();


routerGets.get("/urls/:id");

//routerGets.get("/urls/open/:shortUrl");

//routerGets.get("/users/me");

//routerGets.get("/ranking")

export default routerGets;
