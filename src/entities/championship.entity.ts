import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { ClubChampionship } from "./club-championship.entity";

@Entity('championships')
export class Championship {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({type: 'varchar'})
  name!: string;

  @OneToMany(() => ClubChampionship, (clubChampionship) => clubChampionship.championship, { cascade: true })
  clubChampionships!: ClubChampionship[];
}