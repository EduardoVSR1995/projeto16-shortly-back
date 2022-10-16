import * as userRepository from '../repositories/userRepository.js';
import { customAlphabet } from "nanoid";

export default async function(req, res){
    const token = req.headers.authorization.replace('Bearer ', '');
    
    const { url } = req.body;
    
    const nanoid = customAlphabet(url , 10)

    const short = nanoid(8)

    const shortUrl = short.replace(/[^0-9a-zA-Z]/g,"")

    try {
        
        const rows = await userRepository.getItem(`sessions`,`token`, token, true)
        
        if(rows.length===0) return res.sendStatus(401);

        const obj = await userRepository.insert(`shortens( url , "shortUrl", "visitCount")`, [url, shortUrl, 0])

        await userRepository.insert(`"usersShortens"( "shortensId" , "usersId")`, [obj.rows[0].id ,rows[0].id])

        res.send({shortUrl:shortUrl})   
    
    } catch (error) {
        res.sendStatus(400);
    }
}