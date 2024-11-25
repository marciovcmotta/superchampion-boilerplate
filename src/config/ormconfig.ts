
import { DataSource } from 'typeorm';
import { Club } from '../entities/club.entity';
import { Championship } from '../entities/championship.entity';
import { Player } from '../entities/player.entity';
import { ClubChampionship } from '../entities/club-championship.entity';

import * as dotenv from 'dotenv';


dotenv.config();

export const AppDataSource = new DataSource({
  type: 'mysql',
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  username: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  entities: [Club, Championship, Player, ClubChampionship],
  migrations: ["src/data/migrations/*{.ts,.js}"], 
  synchronize: true, // <-- TODO: VERY IMPORTANT: set this to FALSE for production and create migrations manually
  logging: true
});
