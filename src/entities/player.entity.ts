import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';
import { Club } from './club.entity';

@Entity('players')
export class Player {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({type: 'varchar'})
  name!: string;

  @Column({ type: 'int' }) // Assumindo que 'age' é derivado da data de nascimento
  age!: number;

  @Column({type: 'varchar'})
  nationality!: string;

  @ManyToOne(() => Club, (club) => club.players, { eager: true })
  @JoinColumn({ name: 'clubId' })
  club!: Club;
}