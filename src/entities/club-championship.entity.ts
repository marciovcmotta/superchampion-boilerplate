import { Entity, PrimaryColumn, ManyToOne, JoinColumn } from 'typeorm';
import { Club } from './club.entity';
import { Championship } from './championship.entity';

@Entity('club-champioship')
export class ClubChampionship {
  @PrimaryColumn({ type: 'int' })
  clubId!: number;

  @PrimaryColumn({ type: 'int' })
  championshipId!: number;

  @ManyToOne(() => Club, (club) => club.clubChampionships, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'clubId' })
  club!: Club;

  @ManyToOne(() => Championship, (championship) => championship.clubChampionships, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'championshipId' })
  championship!: Championship;
}