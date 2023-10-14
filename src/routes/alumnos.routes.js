import { Router } from "express";
import {
  crearAlumno,
  getAlumnos,
  getAlumnoById,
  actualizarAlumno,
  borrarAlumnoById,
  defaultAlumnos
} from "../controllers/alumnos.controller.js";

const router = Router();

//CRUD para la tabla alumnos

//C
router.post("/alumnos/crearAlumno", crearAlumno);

//R - ejemplo simple
router.get("/alumnos/getAlumnos", getAlumnos);

//R - ejemplo con parametro
router.get("/alumnos/getAlumnoById/:id", getAlumnoById);

//U
router.put("/alumnos/actualizarAlumno/:id", actualizarAlumno);

//D
router.delete("/alumnos/borrarAlumnoById/:id", borrarAlumnoById);


//Ruta en caso de digitar una erronea
router.get("/alumnos/*", defaultAlumnos);

export default router;
