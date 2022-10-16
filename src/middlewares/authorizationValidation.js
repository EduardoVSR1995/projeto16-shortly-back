import { authorizationSchema } from "../schemas/schemas.js";

export default function (req, res, next){
    const authorization = authorizationSchema.validate({authorization: req.headers.authorization},{abortEarly: false})
        
    if (authorization.error) {

        const error = authorization.error.details.map(details => details.message);
    
        return res.status(401).send(error);
    };

    next();
}