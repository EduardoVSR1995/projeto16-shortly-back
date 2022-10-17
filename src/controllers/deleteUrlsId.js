import * as userRepositoy from '../repositories/userRepository.js'

export default async function (req, res) {
    const token = req.headers.authorization.replace('Bearer ', '');
    const id = req.params.id;
    
    try {
        const user = await userRepositoy.getItem(`sessions`,"token", token, true)

        if(user.length===0) return res.sendStatus(401);
        
        const { rows } = await userRepositoy.verifiIten(user[0].usersId, id)

        const item = await userRepositoy.getItem("shortens", "id", id, true)

        console.log(rows, user)

        if(item.length===0 && rows.length===0) return res.sendStatus(404);

        if(rows.length===0) return res.sendStatus(401);

        await userRepositoy.deleteIten('"usersShortens"', "id",rows[0].id )
        
        await userRepositoy.deleteIten("shortens", "id", id )
        
        res.sendStatus(204)
    } catch (error) {
        
        res.sendStatus(400);
        
    }

}
