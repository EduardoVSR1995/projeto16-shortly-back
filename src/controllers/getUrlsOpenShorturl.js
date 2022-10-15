import * as userRepository from "../repositories/userRepository.js";

export default async function(req, res){
    
    const shortUrl = req.params.shortUrl;

    try {
        
        const obj = await userRepository.getItem("shortens", "shortUrl", shortUrl, true)
        
        if(obj.length===0){ 
            res.sendStatus(404)
            return 
        };

        await userRepository.updateIten("shortens", "visitCount", obj[0].visitCount+1 , obj[0].id )
        
        res.redirect(obj[0].url);
    
    } catch (error) {

        res.sendStatus(400);
    }
}