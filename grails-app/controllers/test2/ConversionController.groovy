package test2

import currency.domain.Currency
import currency.domain.History

class ConversionController {

     def index() {
		 println "Index..."
		 def id = params.currencyId
		 def currency = Currency.get(id)
		 currency.history.add(new History(source:currency.source, destiny:currency.destiny, rate:currency.rate, date:new Date()))
		 currency.save()
		 ["id":id,"source": currency.source,"destiny":currency.destiny,"rate":currency.rate]
	}
	
	def save(){
		println "Saving..."
		def id = params.id
		def source= params.source
		def destiny = params.destiny
		def rate = params.rate
		println "after parameters ID.. "+id
		def currency = Currency.get(id.toInteger())
		currency.source=source
		currency.destiny=destiny
		currency.rate=rate.toFloat()
		currency.save()

		redirect(controller: "ListConversion", action:"index")
	}
}
