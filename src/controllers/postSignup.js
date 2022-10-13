import connection from '../database/postgres.js'

export default async function(req, res){
    const {name, email, password} = req.body
    try {
        const i = await connection.query(`INSERT INTO users(name, email, password) VALUES ($1, $2, $3);`, [name, email, password])
        res.send(req.body)
    } catch (error) {
        res.send(error)
    }

}