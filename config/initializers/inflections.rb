# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections(:en) do |inflect|
	inflect.irregular 'halaman', 'halaman'
	inflect.irregular 'kategori', 'kategori'
	inflect.irregular 'e_data_', 'e_data'
	inflect.irregular 'katolik', 'katolik'
	inflect.irregular 'peran', 'peran'
	inflect.irregular 'tentang', 'tentang'
	inflect.irregular 'foto', 'foto'
	inflect.irregular 'video', 'video'
	inflect.irregular 'berita', 'berita'
	inflect.irregular 'terkini', 'terkini'
	inflect.irregular 'pengumuman', 'pengumuman'
	inflect.irregular 'laporan', 'laporan'
	inflect.irregular 'sumteng', 'sumteng'
	inflect.irregular 'lampiran', 'lampiran'
	inflect.irregular 'pemakai', 'pemakai'
	inflect.irregular 'fungsi', 'fungsi'
end