import {signinSchema} from '../schemas/schemas.js';

export default function(req, res, next){

    try {
        
        const valid = signinSchema.validate(req.body,{abortEarly: false})
        
        if (valid.error) {
    
            const error = valid.error.details.map(details => details.message);
        
            return res.status(422).send(error);
        };
    
        next();

    } catch (error) {
        return res.status(422).send(error)
    }
}
