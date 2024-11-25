import { Router } from "express";
import PlayerController from "./controllers/player.controller";
import ClubController from "./controllers/club.controller";
import ChampionshipController from "./controllers/championship.controller";

const router = Router();

router.get("/players", PlayerController.getPlayers);
router.get("/players/:id", PlayerController.getPlayerById);
router.post("/players", PlayerController.createPlayer);
router.patch("/players/:id", PlayerController.updatePlayerById);
router.delete("/players/:id", PlayerController.deletePlayerById);

router.get("/clubs", ClubController.getClubs);
router.get("/clubs/:id", ClubController.getClubById);
router.post("/clubs", ClubController.createClub);
router.patch("/clubs/:id", ClubController.updateClubById);
router.delete("/clubs/:id", ClubController.deleteClubById);

router.get("/championships", ChampionshipController.getChampionships);
router.get("/championships/:id", ChampionshipController.getChampionshipById);
router.post("/championships", ChampionshipController.createChampionship);
router.patch("/championships/:id", ChampionshipController.updateChampionshipById);
router.delete("/championships/:id", ChampionshipController.deleteChampionshipById);

export default router;