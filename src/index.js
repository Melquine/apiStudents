import app from "./app.js";

app.listen(app.get("port"));

console.log("API REST - Escuchando en el puerto #", app.get("port"));
