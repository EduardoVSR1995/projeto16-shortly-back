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
  
      return promis.rows;
      
    } catch (error) {
      return error;    
    }
  }
  