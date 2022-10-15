import {signupSchema} from '../schemas/schemas.js';

export default function(req, res, next){

    const {password, confirmPassword} = req.body
   
    if(password !== confirmPassword) return res.status(422).send("password diferente da confirmação");
    
    const valid =signupSchema.validate(req.body,{abortEarly: false})
    
    if (valid.error) {

        const error = valid.error.details.map(details => details.message);
    
        return res.status(422).send(error);
    };

    next();

}
