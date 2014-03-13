package test2

import currency.domain.Transaction
import java.text.SimpleDateFormat
import org.grails.plugins.exchangerates.*

class TransactionController {

   def exchangeRateService
   def index = {
	def units = params.units
    def currency1 = params.currency1
    def currency2 = params.currency2
	def total = params.total
	def rate = 0
	
	if(units!=null  && (!units.empty)){
		rate = exchangeRateService.dynamicRate(currency1, currency2)
		total =(rate.toBigDecimal()
							* units.toFloat()).toString()
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd") ;
		Date currentDate  = sdf.parse(new Date().format("yyyy-MM-dd"))
		def transaction = new Transaction(destiny:currency2, source:currency1, rate:rate, units:units, date:currentDate, total:total)
		transaction.save()
	
	}
	    ["units": units, "currency1": currency1,"currency2": currency2, "total":total]
   }
}
