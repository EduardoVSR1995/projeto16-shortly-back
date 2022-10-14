import connection from '../database/postgres.js'
import { v4 as uuid } from 'uuid';
import bcrypt from 'bcrypt';

export default async function(req, res){

    const {email, password} = req.body

    try {
        const { rows } = await connection.query(`SELECT * FROM users WHERE email =$1`,[email]) 
        
        if(rows.length===0) return res.sendStatus(401); 

        const valid = bcrypt.compareSync(password, rows[0].password )

        if(!valid) return res.sendStatus(401);

        const token = uuid();
        
        await connection.query(`INSERT INTO sessions("usersId", token) VALUES ($1, $2);`,[ rows[0].id, token ] )

        res.send({token: token}).status(200);
    
    } catch (error) {
        res.sendStatus(400);
    }

}