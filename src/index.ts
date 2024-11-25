import sqlite from "sqlite3";
import fs from "node:fs";

const db = new sqlite.Database("./BDD/checkpoint1.sqlite");

const sqlContent: string = fs.readFileSync("./BDD/init.sql", {
  encoding: "utf-8",
});

db.exec(sqlContent, (err: Error | null) => {
  if (err) {
    console.log("error loading sql content : " + err);
  } else {
    console.log("init OK");
  }
});
