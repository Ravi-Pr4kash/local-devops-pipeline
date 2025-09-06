import express from "express"

const app = express();

app.get('/', (req,res) => {
    res.json({
        msg: "Devops is Love"
    })
})

app.listen(3000)