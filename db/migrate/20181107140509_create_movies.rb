class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :serial_film
      t.string :bahasa
      t.string :sutradara
      t.string :durasi
      t.text :sinopsis
      t.date :tanggal_rilis
      t.string :link_movie
      t.string :gambar_movie

      t.timestamps
    end
  end
end
