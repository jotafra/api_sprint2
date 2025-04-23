const router = require("express").Router();

const userController = require("../controller/userController");
const classroomController = require("../controller/reservasdisponiveis");
const controllerReserva = require("../controller/controllerReserva");

//User
router.post("/user/", userController.createUser);
router.post("/user/login", userController.postLogin);
router.get("/user/", userController.getAllUsers);
router.get("/user/:id", userController.getUserById);
router.put("/user", userController.updateUser);
router.delete("/user/:id", userController.deleteUser);

//Classroom
router.post("/sala/", classroomController.createClassroom);
router.get("/sala/", classroomController.getAllClassrooms);
router.get("/sala/:numero", classroomController.getClassroomById);
router.put("/sala/", classroomController.updateClassroom);
router.delete("/sala/:numero", classroomController.deleteClassroom);

//Schedule
router.post("/reserva/", controllerReserva.createReserva);
router.get("/reserva/", controllerReserva.getReservas);
router.put("/reserva/:id", controllerReserva.updateReserva);
router.delete("/reserva/:id_reserva", controllerReserva.deleteReserva);

// Route to see the disponible rooms 
router.get("/disponivel/", classroomController.reservasdisponiveis);

// http://10.89.240.95:5000/api/

module.exports = router;
