export const querys = {

  //C
  crearAlumno:
    "INSERT INTO alumnos VALUES (@nombre, @apellidos);",

      //R - ejemplo simple
  getAlumnos:
   "SELECT * FROM alumnos",

     //R - Ejemplo con parametro
  getAlumnoById: 
  "SELECT * FROM alumnos WHERE id_alumno = @id  ",

    //U
actualizarAlumno:
"UPDATE alumnos SET apellidos = @apellidos, nombre = @nombre WHERE id_alumno = @Id",

  // D
  borrarAlumnoById:
   "DELETE alumnos where id_alumno = @Id",

};