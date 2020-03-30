require! [express, morgan, path]

require! './routes/index': indexRoutes

app = express()

port = 3000 || process.env.PORT

app.set 'views', path.join __dirname, '../views'
app.set 'view engine' 'ejs'

app.use morgan 'dev'

app.use '/', indexRoutes

app.use express.static path.join __dirname, '../public'

app.listen port, !-> console.log "Server on port", port