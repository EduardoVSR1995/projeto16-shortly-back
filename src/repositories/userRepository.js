import connection from "../database/postgres.js";

export async function insert(localItens , iten){
    const lock=[];

    for (let index = 0; index < iten.length; index++) {
        lock.push(`$${index+1}`)
    }
    try {
        
        const promis = await connection.query(`INSERT INTO ${localItens} VALUES (${lock.toString()}) RETURNING id ;`, iten )
        
        return promis
        
    } catch (error) {
        return error;
    }
}

export async function getItem(localItens , categori, iten,select){
    try {

        if(select){

            const {rows} = await connection.query(`SELECT * FROM ${localItens} WHERE "${categori}" = $1`,[iten])
            
            return rows;
        }
        const promis = await connection.query(`SELECT * FROM ${localItens} WHERE ${categori} LIKE $1 ;`, [ `${iten}%` ] )
        
        return promis;
        
    } catch (error) {

        return error;
    }
}

export async function getList(table ,value){

  try {
    
    const promis = await connection.query(`SELECT * FROM ${table} ${value};`)

    return promis.rows;
    
  } catch (error) {
    return error;    
  }
}

export async function updateIten(table ,colun ,value, id){

    try {
      
      const promis = await connection.query(`UPDATE ${table} SET "${colun}" = ${value} WHERE id = ${id};`)
  
      return promis;
      
    } catch (error) {
      return error;    
    }
  }
  
export async function deleteIten(table,local ,id){

    try {
      
      const promis = await connection.query(`DELETE FROM ${table} WHERE ${local} = ${id};`)
  
      return promis;
      
    } catch (error) {
      return error;    
    }
  }

export async function verifiIten(user, shortId){

    try {
      
      const promis = await connection.query(
        `SELECT "usersShortens".*
            FROM "usersShortens" 
            WHERE  "usersShortens"."usersId" = ${user} AND "usersShortens"."shortensId" = ${shortId};`)
  
      return promis;
      
    } catch (error) {
      return error;    
    }
  }

export async function somaUsers(user){

try {
    
    const promis = await connection.query(
    `SELECT 
    "usersShortens".id AS "idUsersShortens",
    "usersShortens"."shortensId" AS "idDoUsersShortens",
    "usersShortens"."usersId" AS "idDoUsersShortens",
    shortens.url,
    shortens.id AS "IDshortens",    
    shortens."shortUrl" AS "UrlShortens",
    shortens."visitCount",
    users.name
    FROM "usersShortens" 
            JOIN shortens
                ON "usersShortens"."shortensId" = shortens.id
            JOIN users
                ON "usersShortens"."usersId" = users.id
            WHERE "usersShortens"."usersId" = ${user}
                ;`)

    return promis;
    
} catch (error) {
    return error;    
}
}

export async function rank(){

try {
    
    const promis = await connection.query(
    `SELECT 
    users.id,
    users.name,
    COUNT(shortens) AS "linksCount",
    SUM(shortens."visitCount") AS "visitCount"
    FROM "usersShortens" 
        JOIN users
                ON "usersShortens"."usersId" = users.id
        JOIN shortens
                ON "usersShortens"."shortensId" = shortens.id
        GROUP BY users.id 
        ORDER BY "visitCount" DESC LIMIT 10
        ;`)

    return promis;
    
} catch (error) {
    return error;    
}
}
