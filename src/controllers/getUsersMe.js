import * as userRepository from "../repositories/userRepository.js";

export default async function(req,res){
    const token = req.headers.authorization.replace('Bearer ', '');

    try {
    
        const user = await userRepository.getItem(`sessions`,"token", token, true)

        if(user.length===0) return res.sendStatus(404);

        const {rows} = await userRepository.somaUsers(user[0].usersId);

        const list = await userRepository.getList("shortens","")
        
        console.log(list)
        if(rows.length>0){

            let cont=0;
            const listEnv = {
                id:rows[0].idDoUsersShortens,
                name:rows[0].name,
                visitCount:0,
                shortenedUrls:list.map(function(value){

                    if(rows[0].IDshortens === value.id) cont += value.visitCount
                    return value
                    })
                }
            
            listEnv["visitCount"] = cont;
            
            return res.send(listEnv).status(200);
        }
        const obj = await userRepository.getItem(`users`,"id", user[0].usersId, true)

        res.send({id:obj[0].id, name:obj[0].name, visitCount:0,	shortenedUrls:list}).status(200)
        
    } catch (error) {
        res.sendStatus(400)
    }

}