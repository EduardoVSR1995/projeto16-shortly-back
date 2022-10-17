import * as userRepository from "../repositories/userRepository.js";

export default async function(req, res){
        try {
            const {rows} = await userRepository.rank();

            res.send(rows).status(200)
        } catch (error) {
            res.sendStatus(400)
        }
}