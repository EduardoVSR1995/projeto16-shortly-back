import connection from '../database/postgres.js'
import bcrypt from 'bcrypt';
 

export default async function(req, res){

    const {name, email, password} = req.body

    const encrypt = bcrypt.hashSync(password, 10);

    try {
        const { rows } = await connection.query(`SELECT * FROM users WHERE email =$1`,[email]) 
        
        if(rows.length>0) return res.sendStatus(409); 

        await connection.query(`INSERT INTO users(name, email, password) VALUES ($1, $2, $3);`, [name, email, encrypt])
        
        res.sendStatus(201);
    
    } catch (error) {

        res.sendStatus(400);
    }

}