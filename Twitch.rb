require 'watir'
require 'rainbow'

	browser = Watir::Browser.new
	browser.goto 'google.com'
	puts "Ouverture de Google"
	search_bar = browser.text_field(class: 'gsfi')
	search_bar.set("twitch.tw/owwlman")
	search_bar.send_keys(:enter)
	puts "Recherche Effectué"
	browser.driver.manage.timeouts.implicit_wait = 3
	browser.h3(:text, 'OwwlMan - Twitch').click
	browser.driver.manage.timeouts.implicit_wait = 10800
	timestream = 10800 / 60
	puts "Je suis sur le Stream !" 
	while timestream != 0
		timestream -= 1
		sleep(60)
		puts "Il reste " + Rainbow("#{timestream}").green + " Minutes de Stream" 
		puts "------------------------------"
	end
	puts "Le Stream est finis"
	browser.close



