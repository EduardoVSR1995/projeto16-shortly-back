import express from 'express';


const routDelete = express.Router();

routDelete.delete("/rentals/:id");

export default routDelete;