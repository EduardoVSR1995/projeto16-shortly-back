import * as userRepository from '../repositories/userRepository.js';
import bcrypt from 'bcrypt';
 

export default async function(req, res){

    const {name, email, password} = req.body

    const encrypt = bcrypt.hashSync(password, 10);

    try {

        const rows = await userRepository.getItem("users", "email", email, true ) 

        if(rows.length>0) return res.sendStatus(409); 
    
        await userRepository.insert("users(name, email, password)", [name, email, encrypt] )              

        res.sendStatus(201);
    
    } catch (error) {

        res.sendStatus(400);
    }

}