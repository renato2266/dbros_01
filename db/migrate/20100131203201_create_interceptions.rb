class CreateInterceptions < ActiveRecord::Migration
  def self.up
    create_table :interceptions do |t|
      t.string :nr_protocollo
      t.string :nr_telefono
      t.string :nr_imei
      t.string :ambientale
      t.string :apparato
      t.string :postazione
      t.string :borchia
      t.string :P_P
      t.string :decreto
      t.string :ag
      t.string :ln_tim
      t.string :ln_vodafone
      t.string :ln_wind
      t.string :ln_sparkle
      t.string :wind_int
      t.string :ln_infostrada
      t.string :ln_CeW
      t.string :ln_eutelia
      t.string :ln_telecom
      t.string :ln_bt
      t.string :ln_albacom
      t.string :ln_h3g
      t.date :data_attivazione
      t.date :data_termine
      t.string :nr_cd_dvd
      t.boolean :cd_dvd_atti
      t.boolean :verbale_inizio
      t.boolean :verbale_fine
      t.boolean :brogliaccio
      t.boolean :deposito_cd_dvd
      t.boolean :deposito_gps
      t.date :scadenza
      t.boolean :cessata
      t.string :e_mail_appoggio
      t.string :rif_wind
      t.boolean :in_scadenza
      t.string :rif_vodafone
      t.boolean :positioning
      t.string :e_mail_positioning
      t.string :procedura
      t.string :operatore
      t.string :magistratro
      t.date :data_decreto
      t.string :alias_linea
      t.integer :name_id
      t.integer :investigation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :interceptions
  end
end
