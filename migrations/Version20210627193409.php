<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210627193409 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE series (id INT AUTO_INCREMENT NOT NULL, genre_id INT NOT NULL, nom VARCHAR(255) NOT NULL, keywords VARCHAR(255) DEFAULT NULL, INDEX IDX_3A10012D4296D31F (genre_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE series_categorie (series_id INT NOT NULL, categorie_id INT NOT NULL, INDEX IDX_D991203D5278319C (series_id), INDEX IDX_D991203DBCF5E72D (categorie_id), PRIMARY KEY(series_id, categorie_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE series ADD CONSTRAINT FK_3A10012D4296D31F FOREIGN KEY (genre_id) REFERENCES genre (id)');
        $this->addSql('ALTER TABLE series_categorie ADD CONSTRAINT FK_D991203D5278319C FOREIGN KEY (series_id) REFERENCES series (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE series_categorie ADD CONSTRAINT FK_D991203DBCF5E72D FOREIGN KEY (categorie_id) REFERENCES categorie (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE series_categorie DROP FOREIGN KEY FK_D991203D5278319C');
        $this->addSql('DROP TABLE series');
        $this->addSql('DROP TABLE series_categorie');
    }
}
