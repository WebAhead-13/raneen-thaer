const express = require("express");
const cookieParser = require("cookie-parser");

const app = express();
const port = 3000;
const router = require("./router");

app.use(express.json());
app.use(express.urlencoded());
app.use(cookieParser());

app.use(express.static("public"));
app.use(router);

app.listen(port, () => {
  console.log(`server run on http://localhost:${port}`);
});
