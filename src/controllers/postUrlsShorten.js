import connection from "../database/postgres.js"
import { customAlphabet } from "nanoid";

export default async function(req, res){
    const token = req.headers.authorization.replace('Bearer ', '');
    
    const { url } = req.body;
    
    const nanoid = customAlphabet(url , 10)

    const shortUrl = nanoid(8)

    try {
        
        const { rows } = await connection.query(`SELECT * FROM sessions WHERE token = $1`, [token])
        
        if(rows.length===0) return res.sendStatus(401);

        const obj = await connection.query(`INSERT INTO shortens( url , "shortUrl", "visitCount") VALUES (  $1, $2, $3 ) RETURNING id;`, [url, shortUrl, 0])

        await connection.query(`INSERT INTO "usersShortens"( "shortensId" , "usersId") VALUES ( ${obj.rows[0].id} ,${rows[0].id});`)

        res.send({shortUrl:shortUrl})   
    
    } catch (error) {
        console.log(error)
        res.sendStatus(400);
    }
}