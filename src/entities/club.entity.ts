import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { Player } from './player.entity';
import { ClubChampionship } from './club-championship.entity';

@Entity('clubs')
export class Club {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({type: 'varchar'})
  name!: string;

  @Column({type: 'varchar'})
  country!: string;

  @Column({type: 'varchar'})
  stadium!: string;

  @OneToMany(() => Player, (player) => player.club, { cascade: true })
  players!: Player[];

  @OneToMany(() => ClubChampionship, (clubChampionship) => clubChampionship.club, { cascade: true })
  clubChampionships!: ClubChampionship[];
}