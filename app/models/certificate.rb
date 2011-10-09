#coding: utf-8
class Certificate

	PDF_OPTIONS = {
    :page_size => "A4",
		:page_layout => :landscape,
		:background  => "public/images/background.png",
		:margin => [40, 75]
  }

	def	self.generate(name = nil)
		Prawn::Document.new(PDF_OPTIONS) do
			move_down 100
      text "Certificado de Participação", :size => 30, :style => :bold, :align => :center
			move_down 30
			text "Certificamos que", :size => 20, :align => :center
			move_down 15
			text "<b>#{name.blank? ? '----' : name}</b>", :inline_format => true, :size => 30, :align => :center
			move_down 15
		  text "participou do VII Encontro do GURU-CE, ministrado por Gesiel Rios, Leoncio Caminha e Ênio Lopes, realizado em xx/xx/xxxx das 15:00 às 17:30 na XXXXXXXXXXXX.", :size => 20, :align => :center
	    move_down 30
			text "Fortaleza(Ce) - #{I18n.l(Time.now, :format => :short)}.", :size => 20, :align => :center
      move_down 50
      float do
        translate(100, 0) do
          text "Realização:", :size => 16, :style => :bold
          guruce = "#{Rails.root}/public/images/guruce.png"
          image guruce, :scale => 0.3
        end
      end
      float do
        translate(440, 0) do
          text "Patrocínio:", :size => 16, :style => :bold
          triad_works = "#{Rails.root}/public/images/TriadWorks.png"
          image triad_works, :scale => 0.8
        end
      end
    end
	end
end

