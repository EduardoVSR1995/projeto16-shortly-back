import joi from "joi";

const signupSchema = joi.object({
    name: joi.string().pattern(/^[a-zA-Zà-úÀ-Ú]/).required(),
    email: joi.string().pattern(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/).required(),
    password:joi.string().pattern(/^[a-zA-Zà-úÀ-Ú0-9]/).required(),
    confirmPassword:joi.string().pattern(/^[a-zA-Zà-úÀ-Ú0-9]/).required()
})

export default function(req, res, next){

    const {password, confirmPassword} = req.body
   
    try {
        if(password !== confirmPassword) return res.status(422).send("password diferente da confirmação");
        
        const valid =postSchema.validate(req.body,{abortEarly: false})
        
        if (valid.error) {
    
            const error = valid.error.details.map(details => details.message);
        
            return res.status(422).send(error);
        };
    
        next();

    } catch (error) {
        return res.status(422).send(error)
    }
}
