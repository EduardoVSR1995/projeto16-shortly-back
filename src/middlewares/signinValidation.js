import joi from "joi";

const signinSchema = joi.object({
    email: joi.string().pattern(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/).required(),
    password:joi.string().pattern(/^[a-zA-Zà-úÀ-Ú0-9]/).required(),
})

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
