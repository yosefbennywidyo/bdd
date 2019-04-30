module LaporanGuruAgamaKatolikHelper
	def pengguna_aktif?(pengguna)
    pengguna == current_pengguna
  end
end
