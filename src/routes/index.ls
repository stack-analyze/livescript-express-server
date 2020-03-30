require! express

router = express.Router()

router.get '/' (req, res) !->
    res.render 'index', {title: 'hello wolrd'}


module.exports = router