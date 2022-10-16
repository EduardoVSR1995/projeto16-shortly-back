import * as userRepository from "../repositories/userRepository.js";

export default async function(req,res){
    const token = req.headers.authorization.replace('Bearer ', '');

    try {
        const user = await userRepository.getItem(`sessions`,"token", token, true)

        if(user.length===0) return res.sendStatus(404);

        const {rows} = await userRepository.somaUsers(user[0].id);
        let cont=0;
        
        const listEnv = {
            id:rows[0].idDoUsersShortens,
            name:rows[0].name,
            visitCount:0,
            shortenedUrls:rows.map(function(value){
                cont += value.visitCount
                return{
                    id: value.idUsersShortens,
                    shortUrl: value.UrlShortens,
                    url:value.url,
                    visitCount: value.visitCount
                }
            })
            
        }
        
        listEnv["visitCount"] = cont;
        
        res.send(listEnv).status(200)
    } catch (error) {
        res.sendStatus(400)
    }

}