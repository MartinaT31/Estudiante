import express  from 'express'

import estudianteRouter from './src/routes/estudianteRouter.js'
import __dirname from './src/utils.js'
import Handlebars from 'express-handlebars'

const app = express()

app.use(express.json())
app.use(express.urlencoded({extended:true}))

app.engine('handlebars',Handlebars.engine())
app.set('views',`${__dirname}/views`)
app.set('view engine','handlebars')
app.use(express.static(`${__dirname}/public`))
app.use('/api/estudiantes',estudianteRouter)

app.listen(8085,() => console.log('Listening on port 8085'))