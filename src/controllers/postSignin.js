import * as userRepository  from '../repositories/userRepository.js';
import { v4 as uuid } from 'uuid';
import bcrypt from 'bcrypt';

export default async function(req, res){

    const {email, password} = req.body

    try {
        const rows = await userRepository.getItem("users", "email", email, true ); 
        
        if(rows.length===0) return res.sendStatus(401); 

        const valid = bcrypt.compareSync(password, rows[0].password )

        if(!valid) return res.sendStatus(401);

        const token = uuid();
        
        await userRepository.insert(`sessions("usersId", token)`, [ rows[0].id, token ]) 

        res.send({token: token}).status(200);
    
    } catch (error) {
        res.sendStatus(400);
    }

}