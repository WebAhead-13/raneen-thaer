const path = require("path");

const get = (req, res) => {
  res.sendFile(path.join(__dirname, "..", "/public/login/index.html"));
};

module.exports = { get };
