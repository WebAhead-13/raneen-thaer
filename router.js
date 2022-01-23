const express = require("express");
const router = express.Router();
const homeHandler = require("./handlers/homehandler");

router.get("/", homeHandler.get);

module.exports = router;
