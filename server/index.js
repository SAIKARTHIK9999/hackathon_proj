const express = require('express');
const mongoose = require('mongoose');
const authRouter = require("./routes/auth");
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://karthikmumadi999:WAdwP3nlIKc3OPjv@cluster0.putfhrd.mongodb.net/?retryWrites=true&w=majority";

//Buisness Logic
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);

mongoose
    .connect(DB)
    .then(() => {
    console.log("connection Successfull");
})
.catch((e) => {
    console.log(e);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`)
});