import express from 'express'
import ip from 'ip'
import dotenv from 'dotenv'
import cors from 'cors'
import Response from './domain/response.js'

const app = express()
const port =process.env.SERVER_PORT|| 3000

dotenv.config();

app.use(cors({origin:  '*'}));
app.use(express.json());
// respond with "hello world" when a GET request is made to the homepage
app.get('/', (req, res) => res.send(new Response(200,'ok', 'Ptient API , v1.0.0 - all systems go')))

 

app.listen(port,()=>{
    console.log(`listning on 3000 port ${ip.address()}:${port}`);
})