import * as userRepository from "../repositories/userRepository.js";

export default async function(req, res){
    const id = req.params.id;

    try {

        const obj = await userRepository.getItem("shortens", "id", id, true )
        
        if(obj.length === 0)return res.sendStatus(404)

        delete obj[0].createdAt;
        delete obj[0].visitCount;
        
        res.status(200).send(obj[0]);

    } catch (error) {
        
        res.sendStatus(404);

    }
}